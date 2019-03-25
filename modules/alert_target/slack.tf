resource "wavefront_alert_target" "test_slack" {
  name        = "Test Wavefront Slack Notification"
  description = "Test Wavefront Slack Notification"
  method      = "WEBHOOK"
  content_type = "application/json"
  recipient   = "https://hooks.slack.com/services/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"
  template    = "${file("templates/slacktemplate.template")}"

  triggers = [
    "ALERT_OPENED",
    "ALERT_RESOLVED"
  ]
}
