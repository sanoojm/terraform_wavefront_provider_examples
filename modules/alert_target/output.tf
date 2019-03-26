output "email_target" {
  value = "${wavefront_alert_target.test_email.id}"
}
output "slack_target" {
  value = "${wavefront_alert_target.test_slack.id}"
}
