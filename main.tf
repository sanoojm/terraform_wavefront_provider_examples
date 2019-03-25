provider "wavefront" {
    address = "${var.api_endpoint}"
    token = "${var.token}"
}
module "alert" {
 source = "modules/alert"
}
module "alert_target" {
 source = "modules/alert_target"
 slack_hook = "${var.slack_hook}"
}
module "dashboard" {
 source = "modules/dashboard"
}
