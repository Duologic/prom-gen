{
  '#AlertingConfig': d.obj('AlertingConfig configures alerting and alertmanager related configs.\n', []),
  AlertingConfig: {
    withAlertRelabelConfigs(alert_relabel_configs): {
      alert_relabel_configs: (if std.isArray(alert_relabel_configs) then alert_relabel_configs else [alert_relabel_configs]),
    },
    withAlertRelabelConfigsMixin(alert_relabel_configs): {
      alert_relabel_configs+: (if std.isArray(alert_relabel_configs) then alert_relabel_configs else [alert_relabel_configs]),
    },
    withAlertmanagerConfigs(alertmanagers): {
      alertmanagers: alertmanagers,
    },
  },
  '#AlertmanagerAPIVersion': d.obj("AlertmanagerAPIVersion represents a version of the\ngithub.com/prometheus/alertmanager/api, e.g. 'v1' or 'v2'.\n", []),
  AlertmanagerAPIVersion: {
    withAlertmanagerAPIVersion(alertmanagerapiversion): {
      alertmanagerapiversion: alertmanagerapiversion,
    },
  },
  '#AlertmanagerConfig': d.obj('AlertmanagerConfig configures how Alertmanagers can be discovered and communicated with.\n', []),
  AlertmanagerConfig: {
    '#withScheme': d.fn('The URL scheme to use when talking to Alertmanagers.\n', []),
    withScheme(scheme): {
      scheme: scheme,
    },
    '#withPathPrefix': d.fn('Path prefix to add in front of the push endpoint path.\n', []),
    withPathPrefix(path_prefix): {
      path_prefix: path_prefix,
    },
    '#withTimeout': d.fn('The timeout used when sending alerts.\n', []),
    withTimeout(timeout): {
      timeout: timeout,
    },
    '#withAPIVersion': d.fn('The api version of Alertmanager.\n', []),
    withAPIVersion(api_version): {
      api_version: api_version,
    },
    '#withRelabelConfigs': d.fn('List of Alertmanager relabel configurations.\n', []),
    withRelabelConfigs(relabel_configs): {
      relabel_configs: (if std.isArray(relabel_configs) then relabel_configs else [relabel_configs]),
    },
    withRelabelConfigsMixin(relabel_configs): {
      relabel_configs+: (if std.isArray(relabel_configs) then relabel_configs else [relabel_configs]),
    },
  },
  '#Config': d.obj("Config is the top-level configuration for Prometheus's config files.\n", []),
  Config: {
    withGlobalConfig(global): {
      global: global,
    },
    withAlertingConfig(alerting): {
      alerting: alerting,
    },
    withRuleFiles(rule_files): {
      rule_files: (if std.isArray(rule_files) then rule_files else [rule_files]),
    },
    withRuleFilesMixin(rule_files): {
      rule_files+: (if std.isArray(rule_files) then rule_files else [rule_files]),
    },
    withScrapeConfigs(scrape_configs): {
      scrape_configs: (if std.isArray(scrape_configs) then scrape_configs else [scrape_configs]),
    },
    withScrapeConfigsMixin(scrape_configs): {
      scrape_configs+: (if std.isArray(scrape_configs) then scrape_configs else [scrape_configs]),
    },
    withRemoteWriteConfigs(remote_write): {
      remote_write: (if std.isArray(remote_write) then remote_write else [remote_write]),
    },
    withRemoteWriteConfigsMixin(remote_write): {
      remote_write+: (if std.isArray(remote_write) then remote_write else [remote_write]),
    },
    withRemoteReadConfigs(remote_read): {
      remote_read: (if std.isArray(remote_read) then remote_read else [remote_read]),
    },
    withRemoteReadConfigsMixin(remote_read): {
      remote_read+: (if std.isArray(remote_read) then remote_read else [remote_read]),
    },
  },
  '#GlobalConfig': d.obj('GlobalConfig configures values that are used across other configuration\nobjects.\n', []),
  GlobalConfig: {
    '#withScrapeInterval': d.fn('How frequently to scrape targets by default.\n', []),
    withScrapeInterval(scrape_interval): {
      scrape_interval: scrape_interval,
    },
    '#withScrapeTimeout': d.fn('The default timeout when scraping targets.\n', []),
    withScrapeTimeout(scrape_timeout): {
      scrape_timeout: scrape_timeout,
    },
    '#withEvaluationInterval': d.fn('How frequently to evaluate rules by default.\n', []),
    withEvaluationInterval(evaluation_interval): {
      evaluation_interval: evaluation_interval,
    },
    '#withQueryLogFile': d.fn('File to which PromQL queries are logged.\n', []),
    withQueryLogFile(query_log_file): {
      query_log_file: query_log_file,
    },
    '#withExternalLabels': d.fn('The labels to add to any timeseries that this Prometheus instance scrapes.\n', []),
    withExternalLabels(external_labels): {
      external_labels: external_labels,
    },
  },
  '#MetadataConfig': d.obj('MetadataConfig is the configuration for sending metadata to remote\nstorage.\n', []),
  MetadataConfig: {
    '#withSend': d.fn('Send controls whether we send metric metadata to remote storage.\n', []),
    withSend(send): {
      send: send,
    },
    '#withSendInterval': d.fn('SendInterval controls how frequently we send metric metadata.\n', []),
    withSendInterval(send_interval): {
      send_interval: send_interval,
    },
  },
  '#QueueConfig': d.obj('QueueConfig is the configuration for the queue used to write to remote\nstorage.\n', []),
  QueueConfig: {
    '#withCapacity': d.fn('Number of samples to buffer per shard before we block. Defaults to\nMaxSamplesPerSend.\n', []),
    withCapacity(capacity): {
      capacity: capacity,
    },
    '#withMaxShards': d.fn('Max number of shards, i.e. amount of concurrency.\n', []),
    withMaxShards(max_shards): {
      max_shards: max_shards,
    },
    '#withMinShards': d.fn('Min number of shards, i.e. amount of concurrency.\n', []),
    withMinShards(min_shards): {
      min_shards: min_shards,
    },
    '#withMaxSamplesPerSend': d.fn('Maximum number of samples per send.\n', []),
    withMaxSamplesPerSend(max_samples_per_send): {
      max_samples_per_send: max_samples_per_send,
    },
    '#withBatchSendDeadline': d.fn('Maximum time sample will wait in buffer.\n', []),
    withBatchSendDeadline(batch_send_deadline): {
      batch_send_deadline: batch_send_deadline,
    },
    '#withMinBackoff': d.fn('On recoverable errors, backoff exponentially.\n', []),
    withMinBackoff(min_backoff): {
      min_backoff: min_backoff,
    },
    withMaxBackoff(max_backoff): {
      max_backoff: max_backoff,
    },
    withRetryOnRateLimit(retry_on_http_429): {
      retry_on_http_429: retry_on_http_429,
    },
  },
  '#RemoteReadConfig': d.obj('RemoteReadConfig is the configuration for reading from remote storage.\n', []),
  RemoteReadConfig: {
    withURL(url): {
      url: url,
    },
    withRemoteTimeout(remote_timeout): {
      remote_timeout: remote_timeout,
    },
    withHeaders(headers): {
      headers: headers,
    },
    withReadRecent(read_recent): {
      read_recent: read_recent,
    },
    withName(name): {
      name: name,
    },
    '#withRequiredMatchers': d.fn('RequiredMatchers is an optional list of equality matchers which have to\nbe present in a selector to query the remote read endpoint.\n', []),
    withRequiredMatchers(required_matchers): {
      required_matchers: required_matchers,
    },
  },
  '#RemoteWriteConfig': d.obj('RemoteWriteConfig is the configuration for writing to remote storage.\n', []),
  RemoteWriteConfig: {
    withURL(url): {
      url: url,
    },
    withRemoteTimeout(remote_timeout): {
      remote_timeout: remote_timeout,
    },
    withHeaders(headers): {
      headers: headers,
    },
    withWriteRelabelConfigs(write_relabel_configs): {
      write_relabel_configs: (if std.isArray(write_relabel_configs) then write_relabel_configs else [write_relabel_configs]),
    },
    withWriteRelabelConfigsMixin(write_relabel_configs): {
      write_relabel_configs+: (if std.isArray(write_relabel_configs) then write_relabel_configs else [write_relabel_configs]),
    },
    withName(name): {
      name: name,
    },
    withSendExemplars(send_exemplars): {
      send_exemplars: send_exemplars,
    },
    withQueueConfig(queue_config): {
      queue_config: queue_config,
    },
    withMetadataConfig(metadata_config): {
      metadata_config: metadata_config,
    },
    withSigV4Config(sigv4): {
      sigv4: sigv4,
    },
  },
  '#ScrapeConfig': d.obj('ScrapeConfig configures a scraping unit for Prometheus.\n', []),
  ScrapeConfig: {
    '#withJobName': d.fn('The job name to which the job label is set by default.\n', []),
    withJobName(job_name): {
      job_name: job_name,
    },
    '#withHonorLabels': d.fn('Indicator whether the scraped metrics should remain unmodified.\n', []),
    withHonorLabels(honor_labels): {
      honor_labels: honor_labels,
    },
    '#withHonorTimestamps': d.fn('Indicator whether the scraped timestamps should be respected.\n', []),
    withHonorTimestamps(honor_timestamps): {
      honor_timestamps: honor_timestamps,
    },
    '#withParams': d.fn('A set of query parameters with which the target is scraped.\n', []),
    withParams(params): {
      params: params,
    },
    '#withScrapeInterval': d.fn('How frequently to scrape the targets of this scrape config.\n', []),
    withScrapeInterval(scrape_interval): {
      scrape_interval: scrape_interval,
    },
    '#withScrapeTimeout': d.fn('The timeout for scraping targets of this config.\n', []),
    withScrapeTimeout(scrape_timeout): {
      scrape_timeout: scrape_timeout,
    },
    '#withMetricsPath': d.fn('The HTTP resource path on which to fetch metrics from targets.\n', []),
    withMetricsPath(metrics_path): {
      metrics_path: metrics_path,
    },
    '#withScheme': d.fn('The URL scheme with which to fetch metrics from targets.\n', []),
    withScheme(scheme): {
      scheme: scheme,
    },
    '#withSampleLimit': d.fn('More than this many samples post metric-relabeling will cause the scrape to\nfail.\n', []),
    withSampleLimit(sample_limit): {
      sample_limit: sample_limit,
    },
    '#withTargetLimit': d.fn('More than this many targets after the target relabeling will cause the\nscrapes to fail.\n', []),
    withTargetLimit(target_limit): {
      target_limit: target_limit,
    },
    '#withLabelLimit': d.fn('More than this many labels post metric-relabeling will cause the scrape to\nfail.\n', []),
    withLabelLimit(label_limit): {
      label_limit: label_limit,
    },
    '#withLabelNameLengthLimit': d.fn('More than this label name length post metric-relabeling will cause the\nscrape to fail.\n', []),
    withLabelNameLengthLimit(label_name_length_limit): {
      label_name_length_limit: label_name_length_limit,
    },
    '#withLabelValueLengthLimit': d.fn('More than this label value length post metric-relabeling will cause the\nscrape to fail.\n', []),
    withLabelValueLengthLimit(label_value_length_limit): {
      label_value_length_limit: label_value_length_limit,
    },
    '#withRelabelConfigs': d.fn('List of target relabel configurations.\n', []),
    withRelabelConfigs(relabel_configs): {
      relabel_configs: (if std.isArray(relabel_configs) then relabel_configs else [relabel_configs]),
    },
    withRelabelConfigsMixin(relabel_configs): {
      relabel_configs+: (if std.isArray(relabel_configs) then relabel_configs else [relabel_configs]),
    },
    '#withMetricRelabelConfigs': d.fn('List of metric relabel configurations.\n', []),
    withMetricRelabelConfigs(metric_relabel_configs): {
      metric_relabel_configs: (if std.isArray(metric_relabel_configs) then metric_relabel_configs else [metric_relabel_configs]),
    },
    withMetricRelabelConfigsMixin(metric_relabel_configs): {
      metric_relabel_configs+: (if std.isArray(metric_relabel_configs) then metric_relabel_configs else [metric_relabel_configs]),
    },
  },
  '#SigV4Config': d.obj("SigV4Config is the configuration for signing remote write requests with\nAWS's SigV4 verification process. Empty values will be retrieved using the\nAWS default credentials chain.\n", []),
  SigV4Config: {
    withRegion(region): {
      region: region,
    },
    withAccessKey(access_key): {
      access_key: access_key,
    },
    withSecretKey(secret_key): {
      secret_key: secret_key,
    },
    withProfile(profile): {
      profile: profile,
    },
    withRoleARN(role_arn): {
      role_arn: role_arn,
    },
  },
}
