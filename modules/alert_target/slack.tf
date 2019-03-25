resource "wavefront_alert_target" "test_slack" {
  name        = "Test Wavefront Slack Notification"
  description = "Test Wavefront Slack Notification"
  method      = "WEBHOOK"
  content_type = "application/json"
  recipient   = "${var.slack_hook}"
  template    = "${file("templates/slacktemplate.template")}"

  triggers = [
    "ALERT_OPENED",
    "ALERT_RESOLVED"
  ]
}
