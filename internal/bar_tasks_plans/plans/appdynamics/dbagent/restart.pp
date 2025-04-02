plan bar_tasks_plans::restart (
  TargetSpec $targets
) {

  run_task('bar_tasks_plans::helloworld', $targets)

  $api_key = lookup('bar_tasks_plans::api_key')
  #notify {"Running with api_key ${api_key} ID defined":}

  #$result  = run_task('mkcustomfact', $targets)
  $result  = run_task('bar_tasks_plans', $targets, 'api_key' => $api_key)
  return $result
}
