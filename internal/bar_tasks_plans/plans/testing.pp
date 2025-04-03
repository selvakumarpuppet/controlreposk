plan bar_tasks_plans::testing (
  TargetSpec $targets
) {

  run_task('bar_tasks_plans::helloworld', $targets)
}
