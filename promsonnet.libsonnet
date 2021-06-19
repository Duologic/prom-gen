{
  '#Alert': d.obj('Alert is the user-level representation of a single instance of an alerting rule.\n', []),
  Alert: {
    withState(state): {
      state: state,
    },
    withLabels(labels): {
      labels: labels,
    },
    withAnnotations(annotations): {
      annotations: annotations,
    },
    '#withValue': d.fn('The value at the last evaluation of the alerting expression.\n', []),
    withValue(value): {
      value: value,
    },
    '#withActiveAt': d.fn('The interval during which the condition of this alert held true.\nResolvedAt will be 0 to indicate a still active alert.\n', []),
    withActiveAt(activeat): {
      activeat: activeat,
    },
    withFiredAt(firedat): {
      firedat: firedat,
    },
    withResolvedAt(resolvedat): {
      resolvedat: resolvedat,
    },
    withLastSentAt(lastsentat): {
      lastsentat: lastsentat,
    },
    withValidUntil(validuntil): {
      validuntil: validuntil,
    },
  },
  '#AlertState': d.obj('AlertState denotes the state of an active alert.\n', []),
  AlertState: {
    withAlertState(alertstate): {
      alertstate: alertstate,
    },
  },
  '#AlertingRule': d.obj('An AlertingRule generates alerts from its vector expression.\n', []),
  AlertingRule: {
    '#withName': d.fn('The name of the alert.\n', []),
    withName(name): {
      name: name,
    },
    '#withVector': d.fn('The vector expression from which to generate alerts.\n', []),
    withVector(vector): {
      vector: vector,
    },
    '#withHoldDuration': d.fn('The duration for which a labelset needs to persist in the expression\noutput vector before an alert transitions from Pending to Firing state.\n', []),
    withHoldDuration(holdduration): {
      holdduration: holdduration,
    },
    '#withLabels': d.fn('Extra labels to attach to the resulting alert sample vectors.\n', []),
    withLabels(labels): {
      labels: labels,
    },
    '#withAnnotations': d.fn('Non-identifying key/value pairs.\n', []),
    withAnnotations(annotations): {
      annotations: annotations,
    },
    '#withExternalLabels': d.fn('External labels from the global config.\n', []),
    withExternalLabels(externallabels): {
      externallabels: externallabels,
    },
    '#withRestored': d.fn('true if old state has been restored. We start persisting samples for ALERT_FOR_STATE\nonly after the restoration.\n', []),
    withRestored(restored): {
      restored: restored,
    },
    '#withMtx': d.fn('Protects the below.\n', []),
    withMtx(mtx): {
      mtx: mtx,
    },
    '#withEvaluationDuration': d.fn('Time in seconds taken to evaluate rule.\n', []),
    withEvaluationDuration(evaluationduration): {
      evaluationduration: evaluationduration,
    },
    '#withEvaluationTimestamp': d.fn('Timestamp of last evaluation of rule.\n', []),
    withEvaluationTimestamp(evaluationtimestamp): {
      evaluationtimestamp: evaluationtimestamp,
    },
    '#withHealth': d.fn('The health of the alerting rule.\n', []),
    withHealth(health): {
      health: health,
    },
    '#withLastError': d.fn('The last error seen by the alerting rule.\n', []),
    withLastError(lasterror): {
      lasterror: lasterror,
    },
    '#withActive': d.fn('A map of alerts which are currently active (Pending or Firing), keyed by\nthe fingerprint of the labelset they correspond to.\n', []),
    withActive(active): {
      active: active,
    },
    withLogger(logger): {
      logger: logger,
    },
  },
  '#RecordingRule': d.obj('A RecordingRule records its vector expression into new timeseries.\n', []),
  RecordingRule: {
    withName(name): {
      name: name,
    },
    withVector(vector): {
      vector: vector,
    },
    withLabels(labels): {
      labels: labels,
    },
    '#withMtx': d.fn('Protects the below.\n', []),
    withMtx(mtx): {
      mtx: mtx,
    },
    '#withHealth': d.fn('The health of the recording rule.\n', []),
    withHealth(health): {
      health: health,
    },
    '#withEvaluationTimestamp': d.fn('Timestamp of last evaluation of the recording rule.\n', []),
    withEvaluationTimestamp(evaluationtimestamp): {
      evaluationtimestamp: evaluationtimestamp,
    },
    '#withLastError': d.fn('The last error seen by the recording rule.\n', []),
    withLastError(lasterror): {
      lasterror: lasterror,
    },
    '#withEvaluationDuration': d.fn('Duration of how long it took to evaluate the recording rule.\n', []),
    withEvaluationDuration(evaluationduration): {
      evaluationduration: evaluationduration,
    },
  },
}
