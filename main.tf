provider "wavefront" {
    address = "${var.api_endpoint}"
    token = "${var.token}"
}
module "alert" {
 source = "modules/alert"
 email_target = "${module.alert_target.email_target}"
 slack_target = "${module.alert_target.slack_target}"
}
module "alert_target" {
 source = "modules/alert_target"
 slack_hook = "${var.slack_hook}"
}
module "dashboard" {
 source = "modules/dashboard"
}
