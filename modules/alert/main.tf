
 resource "wavefront_alert" "test_alert" {
   name = "Terraform Test Alert"
   target = "target:${var.email_target}, target:${var.slack_target}"
   condition = "100-ts(\"cpu.usage_idle\", environment=flamingo-int and cpu=cpu-total and service=game-service) > 80"
   display_expression = "100-ts(\"cpu.usage_idle\", environment=flamingo-int and cpu=cpu-total and service=game-service)"
   minutes = 5
   resolve_after_minutes = 5
   severity = "WARN"
   tags = [
     "terraform",
     "flamingo"
   ]
 }

