provider "grafana" {
  url  = "http://grafana.example.com/"
  auth = "......."
}

resource "grafana_dashboard" "metrics" {
  config_json = "${file("grafana-dashboard.json")}"
}

resource "grafana_data_source" "prometheus" {
  type          = "prometheus"
  name          = "amp"
  is_default    = true
  url           = "INSERT YOUR AMP WORKSPACE URL HERE "
  json_data {
    http_method     = "POST"
    sigv4_auth      = true
    sigv4_auth_type = "workspace-iam-role"
    sigv4_region    = "eu-central-1"
  }
}

