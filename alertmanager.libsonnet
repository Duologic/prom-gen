{
  '#Config': d.obj("Config is the top-level configuration for Alertmanager's config files.\n", []),
  Config: {
    withGlobal(global): {
      global: global,
    },
    withRoute(route): {
      route: route,
    },
    withInhibitRules(inhibit_rules): {
      inhibit_rules: (if std.isArray(inhibit_rules) then inhibit_rules else [inhibit_rules]),
    },
    withInhibitRulesMixin(inhibit_rules): {
      inhibit_rules+: (if std.isArray(inhibit_rules) then inhibit_rules else [inhibit_rules]),
    },
    withReceivers(receivers): {
      receivers: (if std.isArray(receivers) then receivers else [receivers]),
    },
    withReceiversMixin(receivers): {
      receivers+: (if std.isArray(receivers) then receivers else [receivers]),
    },
    withTemplates(templates): {
      templates: (if std.isArray(templates) then templates else [templates]),
    },
    withTemplatesMixin(templates): {
      templates+: (if std.isArray(templates) then templates else [templates]),
    },
    withMuteTimeIntervals(mute_time_intervals): {
      mute_time_intervals: (if std.isArray(mute_time_intervals) then mute_time_intervals else [mute_time_intervals]),
    },
    withMuteTimeIntervalsMixin(mute_time_intervals): {
      mute_time_intervals+: (if std.isArray(mute_time_intervals) then mute_time_intervals else [mute_time_intervals]),
    },
  },
  '#EmailConfig': d.obj('EmailConfig configures notifications via mail.\n', []),
  EmailConfig: {
    '#withTo': d.fn('Email address to notify.\n', []),
    withTo(to): {
      to: to,
    },
    withFrom(from): {
      from: from,
    },
    withHello(hello): {
      hello: hello,
    },
    withSmarthost(smarthost): {
      smarthost: smarthost,
    },
    withAuthUsername(auth_username): {
      auth_username: auth_username,
    },
    withAuthPassword(auth_password): {
      auth_password: auth_password,
    },
    withAuthSecret(auth_secret): {
      auth_secret: auth_secret,
    },
    withAuthIdentity(auth_identity): {
      auth_identity: auth_identity,
    },
    withHeaders(headers): {
      headers: headers,
    },
    withHTML(html): {
      html: html,
    },
    withText(text): {
      text: text,
    },
    withRequireTLS(require_tls): {
      require_tls: require_tls,
    },
    withTLSConfig(tls_config): {
      tls_config: tls_config,
    },
  },
  '#GlobalConfig': d.obj('GlobalConfig defines configuration parameters that are valid globally\nunless overwritten.\n', []),
  GlobalConfig: {
    '#withResolveTimeout': d.fn('ResolveTimeout is the time after which an alert is declared resolved\nif it has not been updated.\n', []),
    withResolveTimeout(resolve_timeout): {
      resolve_timeout: resolve_timeout,
    },
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withSMTPFrom(smtp_from): {
      smtp_from: smtp_from,
    },
    withSMTPHello(smtp_hello): {
      smtp_hello: smtp_hello,
    },
    withSMTPSmarthost(smtp_smarthost): {
      smtp_smarthost: smtp_smarthost,
    },
    withSMTPAuthUsername(smtp_auth_username): {
      smtp_auth_username: smtp_auth_username,
    },
    withSMTPAuthPassword(smtp_auth_password): {
      smtp_auth_password: smtp_auth_password,
    },
    withSMTPAuthSecret(smtp_auth_secret): {
      smtp_auth_secret: smtp_auth_secret,
    },
    withSMTPAuthIdentity(smtp_auth_identity): {
      smtp_auth_identity: smtp_auth_identity,
    },
    withSMTPRequireTLS(smtp_require_tls): {
      smtp_require_tls: smtp_require_tls,
    },
    withSlackAPIURL(slack_api_url): {
      slack_api_url: slack_api_url,
    },
    withSlackAPIURLFile(slack_api_url_file): {
      slack_api_url_file: slack_api_url_file,
    },
    withPagerdutyURL(pagerduty_url): {
      pagerduty_url: pagerduty_url,
    },
    withOpsGenieAPIURL(opsgenie_api_url): {
      opsgenie_api_url: opsgenie_api_url,
    },
    withOpsGenieAPIKey(opsgenie_api_key): {
      opsgenie_api_key: opsgenie_api_key,
    },
    withWeChatAPIURL(wechat_api_url): {
      wechat_api_url: wechat_api_url,
    },
    withWeChatAPISecret(wechat_api_secret): {
      wechat_api_secret: wechat_api_secret,
    },
    withWeChatAPICorpID(wechat_api_corp_id): {
      wechat_api_corp_id: wechat_api_corp_id,
    },
    withVictorOpsAPIURL(victorops_api_url): {
      victorops_api_url: victorops_api_url,
    },
    withVictorOpsAPIKey(victorops_api_key): {
      victorops_api_key: victorops_api_key,
    },
  },
  '#HostPort': d.obj('HostPort represents a "host:port" network address.\n', []),
  HostPort: {
    withHost(host): {
      host: host,
    },
    withPort(port): {
      port: port,
    },
  },
  '#InhibitRule': d.obj('InhibitRule defines an inhibition rule that mutes alerts that match the\ntarget labels if an alert matching the source labels exists.\nBoth alerts have to have a set of labels being equal.\n', []),
  InhibitRule: {
    '#withSourceMatch': d.fn('SourceMatch defines a set of labels that have to equal the given\nvalue for source alerts. Deprecated. Remove before v1.0 release.\n', []),
    withSourceMatch(source_match): {
      source_match: source_match,
    },
    '#withSourceMatchRE': d.fn('SourceMatchRE defines pairs like SourceMatch but does regular expression\nmatching. Deprecated. Remove before v1.0 release.\n', []),
    withSourceMatchRE(source_match_re): {
      source_match_re: source_match_re,
    },
    '#withSourceMatchers': d.fn('SourceMatchers defines a set of label matchers that have to be fulfilled for source alerts.\n', []),
    withSourceMatchers(source_matchers): {
      source_matchers: source_matchers,
    },
    '#withTargetMatch': d.fn('TargetMatch defines a set of labels that have to equal the given\nvalue for target alerts. Deprecated. Remove before v1.0 release.\n', []),
    withTargetMatch(target_match): {
      target_match: target_match,
    },
    '#withTargetMatchRE': d.fn('TargetMatchRE defines pairs like TargetMatch but does regular expression\nmatching. Deprecated. Remove before v1.0 release.\n', []),
    withTargetMatchRE(target_match_re): {
      target_match_re: target_match_re,
    },
    '#withTargetMatchers': d.fn('TargetMatchers defines a set of label matchers that have to be fulfilled for target alerts.\n', []),
    withTargetMatchers(target_matchers): {
      target_matchers: target_matchers,
    },
    '#withEqual': d.fn('A set of labels that must be equal between the source and target alert\nfor them to be a match.\n', []),
    withEqual(equal): {
      equal: equal,
    },
  },
  '#MuteTimeInterval': d.obj('MuteTimeInterval represents a named set of time intervals for which a route should be muted.\n', []),
  MuteTimeInterval: {
    withName(name): {
      name: name,
    },
    withTimeIntervals(time_intervals): {
      time_intervals: (if std.isArray(time_intervals) then time_intervals else [time_intervals]),
    },
    withTimeIntervalsMixin(time_intervals): {
      time_intervals+: (if std.isArray(time_intervals) then time_intervals else [time_intervals]),
    },
  },
  '#NotifierConfig': d.obj('NotifierConfig contains base options common across all notifier configurations.\n', []),
  NotifierConfig: {
    withVSendResolved(send_resolved): {
      send_resolved: send_resolved,
    },
  },
  '#OpsGenieConfig': d.obj('OpsGenieConfig configures notifications via OpsGenie.\n', []),
  OpsGenieConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withAPIKey(api_key): {
      api_key: api_key,
    },
    withAPIURL(api_url): {
      api_url: api_url,
    },
    withMessage(message): {
      message: message,
    },
    withDescription(description): {
      description: description,
    },
    withSource(source): {
      source: source,
    },
    withDetails(details): {
      details: details,
    },
    withResponders(responders): {
      responders: (if std.isArray(responders) then responders else [responders]),
    },
    withRespondersMixin(responders): {
      responders+: (if std.isArray(responders) then responders else [responders]),
    },
    withTags(tags): {
      tags: tags,
    },
    withNote(note): {
      note: note,
    },
    withPriority(priority): {
      priority: priority,
    },
  },
  '#OpsGenieConfigResponder': d.obj('', []),
  OpsGenieConfigResponder: {
    '#withID': d.fn('One of those 3 should be filled.\n', []),
    withID(id): {
      id: id,
    },
    withName(name): {
      name: name,
    },
    withUsername(username): {
      username: username,
    },
    '#withType': d.fn('team, user, escalation, schedule etc.\n', []),
    withType(type): {
      type: type,
    },
  },
  '#PagerdutyConfig': d.obj('PagerdutyConfig configures notifications via PagerDuty.\n', []),
  PagerdutyConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withServiceKey(service_key): {
      service_key: service_key,
    },
    withRoutingKey(routing_key): {
      routing_key: routing_key,
    },
    withURL(url): {
      url: url,
    },
    withClient(client): {
      client: client,
    },
    withClientURL(client_url): {
      client_url: client_url,
    },
    withDescription(description): {
      description: description,
    },
    withDetails(details): {
      details: details,
    },
    withImages(images): {
      images: (if std.isArray(images) then images else [images]),
    },
    withImagesMixin(images): {
      images+: (if std.isArray(images) then images else [images]),
    },
    withLinks(links): {
      links: (if std.isArray(links) then links else [links]),
    },
    withLinksMixin(links): {
      links+: (if std.isArray(links) then links else [links]),
    },
    withSeverity(severity): {
      severity: severity,
    },
    withClass(class): {
      class: class,
    },
    withComponent(component): {
      component: component,
    },
    withGroup(group): {
      group: group,
    },
  },
  '#PagerdutyImage': d.obj('PagerdutyImage is an image\n', []),
  PagerdutyImage: {
    withSrc(src): {
      src: src,
    },
    withAlt(alt): {
      alt: alt,
    },
    withHref(href): {
      href: href,
    },
  },
  '#PagerdutyLink': d.obj('PagerdutyLink is a link\n', []),
  PagerdutyLink: {
    withHref(href): {
      href: href,
    },
    withText(text): {
      text: text,
    },
  },
  '#PushoverConfig': d.obj('', []),
  PushoverConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withUserKey(user_key): {
      user_key: user_key,
    },
    withToken(token): {
      token: token,
    },
    withTitle(title): {
      title: title,
    },
    withMessage(message): {
      message: message,
    },
    withURL(url): {
      url: url,
    },
    withURLTitle(url_title): {
      url_title: url_title,
    },
    withSound(sound): {
      sound: sound,
    },
    withPriority(priority): {
      priority: priority,
    },
    withRetry(retry): {
      retry: retry,
    },
    withExpire(expire): {
      expire: expire,
    },
    withHTML(html): {
      html: html,
    },
  },
  '#Receiver': d.obj('Receiver configuration provides configuration on how to contact a receiver.\n', []),
  Receiver: {
    '#withName': d.fn('A unique identifier for this receiver.\n', []),
    withName(name): {
      name: name,
    },
    withEmailConfigs(email_configs): {
      email_configs: (if std.isArray(email_configs) then email_configs else [email_configs]),
    },
    withEmailConfigsMixin(email_configs): {
      email_configs+: (if std.isArray(email_configs) then email_configs else [email_configs]),
    },
    withPagerdutyConfigs(pagerduty_configs): {
      pagerduty_configs: (if std.isArray(pagerduty_configs) then pagerduty_configs else [pagerduty_configs]),
    },
    withPagerdutyConfigsMixin(pagerduty_configs): {
      pagerduty_configs+: (if std.isArray(pagerduty_configs) then pagerduty_configs else [pagerduty_configs]),
    },
    withSlackConfigs(slack_configs): {
      slack_configs: (if std.isArray(slack_configs) then slack_configs else [slack_configs]),
    },
    withSlackConfigsMixin(slack_configs): {
      slack_configs+: (if std.isArray(slack_configs) then slack_configs else [slack_configs]),
    },
    withWebhookConfigs(webhook_configs): {
      webhook_configs: (if std.isArray(webhook_configs) then webhook_configs else [webhook_configs]),
    },
    withWebhookConfigsMixin(webhook_configs): {
      webhook_configs+: (if std.isArray(webhook_configs) then webhook_configs else [webhook_configs]),
    },
    withOpsGenieConfigs(opsgenie_configs): {
      opsgenie_configs: (if std.isArray(opsgenie_configs) then opsgenie_configs else [opsgenie_configs]),
    },
    withOpsGenieConfigsMixin(opsgenie_configs): {
      opsgenie_configs+: (if std.isArray(opsgenie_configs) then opsgenie_configs else [opsgenie_configs]),
    },
    withWechatConfigs(wechat_configs): {
      wechat_configs: (if std.isArray(wechat_configs) then wechat_configs else [wechat_configs]),
    },
    withWechatConfigsMixin(wechat_configs): {
      wechat_configs+: (if std.isArray(wechat_configs) then wechat_configs else [wechat_configs]),
    },
    withPushoverConfigs(pushover_configs): {
      pushover_configs: (if std.isArray(pushover_configs) then pushover_configs else [pushover_configs]),
    },
    withPushoverConfigsMixin(pushover_configs): {
      pushover_configs+: (if std.isArray(pushover_configs) then pushover_configs else [pushover_configs]),
    },
    withVictorOpsConfigs(victorops_configs): {
      victorops_configs: (if std.isArray(victorops_configs) then victorops_configs else [victorops_configs]),
    },
    withVictorOpsConfigsMixin(victorops_configs): {
      victorops_configs+: (if std.isArray(victorops_configs) then victorops_configs else [victorops_configs]),
    },
  },
  '#Route': d.obj('A Route is a node that contains definitions of how to handle alerts.\n', []),
  Route: {
    withReceiver(receiver): {
      receiver: receiver,
    },
    withGroupByStr(group_by): {
      group_by: (if std.isArray(group_by) then group_by else [group_by]),
    },
    withGroupByStrMixin(group_by): {
      group_by+: (if std.isArray(group_by) then group_by else [group_by]),
    },
    '#withMatch': d.fn('Deprecated. Remove before v1.0 release.\n', []),
    withMatch(match): {
      match: match,
    },
    '#withMatchRE': d.fn('Deprecated. Remove before v1.0 release.\n', []),
    withMatchRE(match_re): {
      match_re: match_re,
    },
    withMatchers(matchers): {
      matchers: matchers,
    },
    withMuteTimeIntervals(mute_time_intervals): {
      mute_time_intervals: (if std.isArray(mute_time_intervals) then mute_time_intervals else [mute_time_intervals]),
    },
    withMuteTimeIntervalsMixin(mute_time_intervals): {
      mute_time_intervals+: (if std.isArray(mute_time_intervals) then mute_time_intervals else [mute_time_intervals]),
    },
    withContinue(continue): {
      continue: continue,
    },
    withRoutes(routes): {
      routes: (if std.isArray(routes) then routes else [routes]),
    },
    withRoutesMixin(routes): {
      routes+: (if std.isArray(routes) then routes else [routes]),
    },
    withGroupWait(group_wait): {
      group_wait: group_wait,
    },
    withGroupInterval(group_interval): {
      group_interval: group_interval,
    },
    withRepeatInterval(repeat_interval): {
      repeat_interval: repeat_interval,
    },
  },
  '#Secret': d.obj('Secret is a string that must not be revealed on marshaling.\n', []),
  Secret: {
    withSecret(secret): {
      secret: secret,
    },
  },
  '#SecretURL': d.obj('SecretURL is a URL that must not be revealed on marshaling.\n', []),
  SecretURL: {
    withSecretURL(secreturl): {
      secreturl: secreturl,
    },
  },
  '#SlackAction': d.obj('SlackAction configures a single Slack action that is sent with each notification.\nSee https://api.slack.com/docs/message-attachments#action_fields and https://api.slack.com/docs/message-buttons\nfor more information.\n', []),
  SlackAction: {
    withType(type): {
      type: type,
    },
    withText(text): {
      text: text,
    },
    withURL(url): {
      url: url,
    },
    withStyle(style): {
      style: style,
    },
    withName(name): {
      name: name,
    },
    withValue(value): {
      value: value,
    },
    withConfirmField(confirm): {
      confirm: confirm,
    },
  },
  '#SlackConfig': d.obj('SlackConfig configures notifications via Slack.\n', []),
  SlackConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withAPIURL(api_url): {
      api_url: api_url,
    },
    withAPIURLFile(api_url_file): {
      api_url_file: api_url_file,
    },
    '#withChannel': d.fn('Slack channel override, (like #other-channel or @username).\n', []),
    withChannel(channel): {
      channel: channel,
    },
    withUsername(username): {
      username: username,
    },
    withColor(color): {
      color: color,
    },
    withTitle(title): {
      title: title,
    },
    withTitleLink(title_link): {
      title_link: title_link,
    },
    withPretext(pretext): {
      pretext: pretext,
    },
    withText(text): {
      text: text,
    },
    withFields(fields): {
      fields: (if std.isArray(fields) then fields else [fields]),
    },
    withFieldsMixin(fields): {
      fields+: (if std.isArray(fields) then fields else [fields]),
    },
    withShortFields(short_fields): {
      short_fields: short_fields,
    },
    withFooter(footer): {
      footer: footer,
    },
    withFallback(fallback): {
      fallback: fallback,
    },
    withCallbackID(callback_id): {
      callback_id: callback_id,
    },
    withIconEmoji(icon_emoji): {
      icon_emoji: icon_emoji,
    },
    withIconURL(icon_url): {
      icon_url: icon_url,
    },
    withImageURL(image_url): {
      image_url: image_url,
    },
    withThumbURL(thumb_url): {
      thumb_url: thumb_url,
    },
    withLinkNames(link_names): {
      link_names: link_names,
    },
    withMrkdwnIn(mrkdwn_in): {
      mrkdwn_in: (if std.isArray(mrkdwn_in) then mrkdwn_in else [mrkdwn_in]),
    },
    withMrkdwnInMixin(mrkdwn_in): {
      mrkdwn_in+: (if std.isArray(mrkdwn_in) then mrkdwn_in else [mrkdwn_in]),
    },
    withActions(actions): {
      actions: (if std.isArray(actions) then actions else [actions]),
    },
    withActionsMixin(actions): {
      actions+: (if std.isArray(actions) then actions else [actions]),
    },
  },
  '#SlackConfirmationField': d.obj('SlackConfirmationField protect users from destructive actions or particularly distinguished decisions\nby asking them to confirm their button click one more time.\nSee https://api.slack.com/docs/interactive-message-field-guide#confirmation_fields for more information.\n', []),
  SlackConfirmationField: {
    withText(text): {
      text: text,
    },
    withTitle(title): {
      title: title,
    },
    withOkText(ok_text): {
      ok_text: ok_text,
    },
    withDismissText(dismiss_text): {
      dismiss_text: dismiss_text,
    },
  },
  '#SlackField': d.obj('SlackField configures a single Slack field that is sent with each notification.\nEach field must contain a title, value, and optionally, a boolean value to indicate if the field\nis short enough to be displayed next to other fields designated as short.\nSee https://api.slack.com/docs/message-attachments#fields for more information.\n', []),
  SlackField: {
    withTitle(title): {
      title: title,
    },
    withValue(value): {
      value: value,
    },
    withShort(short): {
      short: short,
    },
  },
  '#VictorOpsConfig': d.obj('VictorOpsConfig configures notifications via VictorOps.\n', []),
  VictorOpsConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withAPIKey(api_key): {
      api_key: api_key,
    },
    withAPIKeyFile(api_key_file): {
      api_key_file: api_key_file,
    },
    withAPIURL(api_url): {
      api_url: api_url,
    },
    withRoutingKey(routing_key): {
      routing_key: routing_key,
    },
    withMessageType(message_type): {
      message_type: message_type,
    },
    withStateMessage(state_message): {
      state_message: state_message,
    },
    withEntityDisplayName(entity_display_name): {
      entity_display_name: entity_display_name,
    },
    withMonitoringTool(monitoring_tool): {
      monitoring_tool: monitoring_tool,
    },
    withCustomFields(custom_fields): {
      custom_fields: custom_fields,
    },
  },
  '#WebhookConfig': d.obj('WebhookConfig configures notifications via a generic webhook.\n', []),
  WebhookConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    '#withURL': d.fn('URL to send POST request to.\n', []),
    withURL(url): {
      url: url,
    },
    '#withMaxAlerts': d.fn('MaxAlerts is the maximum number of alerts to be sent per webhook message.\nAlerts exceeding this threshold will be truncated. Setting this to 0\nallows an unlimited number of alerts.\n', []),
    withMaxAlerts(max_alerts): {
      max_alerts: max_alerts,
    },
  },
  '#WechatConfig': d.obj('WechatConfig configures notifications via Wechat.\n', []),
  WechatConfig: {
    withHTTPConfig(http_config): {
      http_config: http_config,
    },
    withAPISecret(api_secret): {
      api_secret: api_secret,
    },
    withCorpID(corp_id): {
      corp_id: corp_id,
    },
    withMessage(message): {
      message: message,
    },
    withAPIURL(api_url): {
      api_url: api_url,
    },
    withToUser(to_user): {
      to_user: to_user,
    },
    withToParty(to_party): {
      to_party: to_party,
    },
    withToTag(to_tag): {
      to_tag: to_tag,
    },
    withAgentID(agent_id): {
      agent_id: agent_id,
    },
    withMessageType(message_type): {
      message_type: message_type,
    },
  },
}
