{
  '#Error': d.obj('Error represents semantic errors on parsing rule groups.\n', []),
  Error: {
    withGroup(group): {
      group: group,
    },
    withRule(rule): {
      rule: rule,
    },
    withRuleName(rulename): {
      rulename: rulename,
    },
    withErr(err): {
      err: err,
    },
  },
  '#Rule': d.obj('Rule describes an alerting or recording rule.\n', []),
  Rule: {
    withRecord(record): {
      record: record,
    },
    withAlert(alert): {
      alert: alert,
    },
    withExpr(expr): {
      expr: expr,
    },
    withFor(f): {
      'for': f,
    },
    withLabels(labels): {
      labels: labels,
    },
    withAnnotations(annotations): {
      annotations: annotations,
    },
  },
  '#RuleGroup': d.obj('RuleGroup is a list of sequentially evaluated recording and alerting rules.\n', []),
  RuleGroup: {
    withName(name): {
      name: name,
    },
    withInterval(interval): {
      interval: interval,
    },
    withRules(rules): {
      rules: (if std.isArray(rules) then rules else [rules]),
    },
    withRulesMixin(rules): {
      rules+: (if std.isArray(rules) then rules else [rules]),
    },
  },
  '#RuleGroups': d.obj('RuleGroups is a set of rule groups that are typically exposed in a file.\n', []),
  RuleGroups: {
    withGroups(groups): {
      groups: (if std.isArray(groups) then groups else [groups]),
    },
    withGroupsMixin(groups): {
      groups+: (if std.isArray(groups) then groups else [groups]),
    },
  },
  '#RuleNode': d.obj('RuleNode adds yaml.v3 layer to support line and column outputs for invalid rules.\n', []),
  RuleNode: {
    withRecord(record): {
      record: record,
    },
    withAlert(alert): {
      alert: alert,
    },
    withExpr(expr): {
      expr: expr,
    },
    withFor(f): {
      'for': f,
    },
    withLabels(labels): {
      labels: labels,
    },
    withAnnotations(annotations): {
      annotations: annotations,
    },
  },
}
