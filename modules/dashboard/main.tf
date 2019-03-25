resource "wavefront_dashboard" "test_dashboard" {
  name = "Terraform Test Dashboard"
  description = "testing, testing"
  url = "tftestcreate"
  section {
    name = "section 1"
    row {
      chart {
        name = "chart 1"
        description = "chart number 1"
        units = "something per unit"
        source {
          name = "source name"
          query = "ts()"
        }
        chart_setting {
          type = "linear"
        }
        summarization = "MEAN"
      }
      chart {
        name = "chart 1"
        description = "chart number 1"
        units = "something per unit"
        source {
          name = "source name"
          query = "ts()"
        }
        chart_setting {
          type = "linear"
        }
        summarization = "MEAN"
      }
    }
    row {
      chart {
        name = "chart 1"
        description = "chart number 1"
        units = "something per unit"
        source {
          name = "source name"
          query = "ts()"
        }
        chart_setting {
          type = "linear"
        }
        summarization = "MEAN"
      }
    }
  }
  parameter_details {
    name = "param1"
    label = "param1"
    default_value = "Label"
    hide_from_view = false
    parameter_type = "SIMPLE"
	values_to_readable_strings = {
		Label = "test"
	}
  }
  tags = [
    "b",
    "terraform",
    "a",
    "test"
  ]
}

