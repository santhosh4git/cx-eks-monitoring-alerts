resource "datadog_monitor" "monitor-alert" {
  name              = var.monitor_name
  type              = var.monitor_type
  query             = var.monitor_query
  message           = "${var.monitor_message} ${var.slack_channel}"
  tags              = concat(["tf", "org:cx"], var.tags)
  thresholds        = var.thresholds
  notify_audit      = false
  renotify_interval = 60
  notify_no_data    = false
  timeout_h         = 60
  include_tags      = true
}
