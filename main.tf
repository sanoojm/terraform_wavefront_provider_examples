provider "wavefront" {
    address = "${var.api_endpoint}"
    token = "${var.token}"
}
module "alert" {
 source = "modules/alert"
}
module "alert_target" {
 source = "modules/alert_target"
}
module "dashboard" {
 source = "modules/dashboard"
}
