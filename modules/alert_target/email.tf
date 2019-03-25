resource "wavefront_alert_target" "test_email" {
   name        = "Test Wavefront Email Notification"
   description = "Test Wavefront Email Notification" 
   triggers = [
      "ALERT_OPENED",
      "ALERT_RESOLVED"
   ]
   method      = "EMAIL"
   is_html_content = 1 
   recipient   = "test@example.com"
   email_subject = "[{{#severity}}{{{severity}}}{{/severity}}]{{{name}}} ({{{notificationId}}})"
   template    = "${file("templates/emailtemplate.html")}"
}
