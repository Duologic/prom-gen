package main

import (
	"encoding/json"
	"fmt"
	"go/ast"
	"go/doc"
	"go/parser"
	"go/token"
	"io/ioutil"
	"net/http"
	"strings"

	"github.com/fatih/structtag"
)

func main() {
	fset := token.NewFileSet()

	files := []*ast.File{
		//mustParse(fset, "https://raw.githubusercontent.com/prometheus/alertmanager/v0.22.2/config/config.go", "config.go"),
		//mustParse(fset, "https://raw.githubusercontent.com/prometheus/alertmanager/v0.22.2/config/notifiers.go", "notifiers.go"),
		//mustParse(fset, "https://raw.githubusercontent.com/prometheus/prometheus/v2.27.1/config/config.go", "config.go"),
		mustParse(fset, "https://raw.githubusercontent.com/prometheus/prometheus/v2.27.1/pkg/rulefmt/rulefmt.go", "rulefmt.go"),
	}

	//d, err := doc.NewFromFiles(fset, files, "config") //, doc.AllDecls)
	d, err := doc.NewFromFiles(fset, files, "rulefmt") //<- I need this for the alerting/recording rules
	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Println("{")
	for _, t := range d.Types {
		var render string
		for _, spec := range t.Decl.Specs {
			s, ok := spec.(*ast.TypeSpec)
			if !ok {
				continue
			}
			switch s.Type.(type) {
			case *ast.Ident:
				r, err := Render(t.Name, nil, s.Type, "")
				if err != nil {
					fmt.Println(err)
					return
				}
				render = render + r
			default:
				structDecl, ok := s.Type.(*ast.StructType)
				if !ok {
					continue
				}

				for _, fld := range structDecl.Fields.List {
					var name string
					if len(fld.Names) != 0 {
						name = fld.Names[0].Name
					}
					r, err := Render(name, fld.Tag, fld.Type, jsonEscape(fld.Doc.Text()))
					if err != nil {
						fmt.Println(err)
						return
					}
					render = render + r
				}
			}

		}
		if render != "" {
			fmt.Printf("'#%s': d.obj(\"%s\", []),\n", t.Name, jsonEscape(t.Doc))
			fmt.Printf("'%s': {\n", t.Name)
			fmt.Println(render)
			fmt.Println("},")
		}

	}
	fmt.Println("}")
}

func jsonEscape(i string) string {
	b, err := json.Marshal(i)
	if err != nil {
		panic(err)
	}
	s := string(b)
	return s[1 : len(s)-1]
}

func LoadHTTP(url string) (string, error) {
	r, err := http.Get(url)
	if err != nil {
		return "", err
	}

	data, err := ioutil.ReadAll(r.Body)
	if err != nil {
		return "", err
	}

	return string(data), nil
}

func mustParse(fset *token.FileSet, url, filename string) *ast.File {

	src, err := LoadHTTP(url)
	if err != nil {
		panic(err)
	}

	f, err := parser.ParseFile(fset, filename, src, parser.ParseComments)
	if err != nil {
		panic(err)
	}
	return f
}

func SafeVariableName(tagName string) string {
	switch tagName {
	case "for":
		return "f"
	case "error":
		return "e"
	default:
		return tagName
	}
}

func ParseName(name string, tag *ast.BasicLit) (string, string, error) {
	name = strings.Title(name)
	if tag == nil {
		return name, strings.ToLower(name), nil
	}
	t := strings.SplitN(strings.Trim(tag.Value, "`"), " ", 2)[0]
	tags, err := structtag.Parse(t)
	if err != nil {
		return "", "", err
	}
	var stag *structtag.Tag
	stag, err = tags.Get("yaml")
	if err != nil {
		stag, err = tags.Get("json")
		if err != nil {
			return "", "", err
		}
	}
	tagName := stag.Name
	if tagName == "-" {
		return name, "", nil
	}
	return name, tagName, nil
}

func Render(name string, tag *ast.BasicLit, exp ast.Expr, doc string) (string, error) {
	name, tagName, err := ParseName(name, tag)
	if err != nil {
		return "", err
	}
	if tagName == "" {
		return "", nil
	}
	variableName := SafeVariableName(tagName)
	var out string
	switch exp.(type) {
	case *ast.Ident:
		if doc != "" {
			out = out + fmt.Sprintf("'#with%s': d.fn('%s', []),\n", name, doc)
		}
		out = out + fmt.Sprintf("with%s(%s): {\n", name, variableName)
		out = out + fmt.Sprintf("  '%s': %s\n},", tagName, variableName)
		//out = out + fmt.Sprintf("%#v '%s': %s\n", exp.(*ast.Ident).Name, fld.Names[0], fld.Doc.Text())
	case *ast.ArrayType:
		if doc != "" {
			out = out + fmt.Sprintf("'#with%s': d.fn('%s', []),\n", name, doc)
		}
		out = out + fmt.Sprintf("with%s(%s): {\n", name, variableName)
		out = out + fmt.Sprintf("  '%s': (if std.isArray(%s) then %s else [%s])\n},\n", tagName, variableName, variableName, variableName)
		out = out + fmt.Sprintf("with%sMixin(%s): {\n", name, variableName)
		out = out + fmt.Sprintf("  '%s'+: (if std.isArray(%s) then %s else [%s])\n},", tagName, variableName, variableName, variableName)
	case *ast.StarExpr:
		if name == "" {
			switch exp.(*ast.StarExpr).X.(type) {
			case *ast.Ident:
				name = exp.(*ast.StarExpr).X.(*ast.Ident).Name
			case *ast.SelectorExpr:
				name = exp.(*ast.StarExpr).X.(*ast.SelectorExpr).Sel.Name
			default:
				name = exp.(*ast.StarExpr).X.(*ast.Ident).Name
			}
		}

		if doc != "" {
			out = out + fmt.Sprintf("'#with%s': d.fn('%s', []),\n", name, doc)
		}
		out = out + fmt.Sprintf("with%s(%s): {\n", name, variableName)
		out = out + fmt.Sprintf("  '%s': %s\n},", tagName, variableName)
	default:
		if doc != "" {
			out = out + fmt.Sprintf("'#with%s': d.fn('%s', []),\n", name, doc)
		}
		out = out + fmt.Sprintf("with%s(%s): {\n", name, variableName)
		out = out + fmt.Sprintf("  '%s': %s\n},", tagName, variableName)
	}
	return out, nil
}
