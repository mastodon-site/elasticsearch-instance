data "ec_stack" "latest" {
  version_regex = "latest"
  region        = var.elastic_region
}

resource "ec_deployment" "cluster" {
  name                   = var.elastic_cluster_name
  version                = data.ec_stack.latest.version
  region                 = var.elastic_region
  deployment_template_id = var.elastic_deployment_template_id

  elasticsearch = {
    hot = {
      size          = var.elasticsearch_node_hot_size
      size_resource = "memory"
      zone_count    = "2"
      autoscaling   = {}
    }
  }

  kibana = {}

  enterprise_search = null

  integrations_server = null

  traffic_filter = [
    ec_deployment_traffic_filter.ingress.id
  ]

  lifecycle {
    ignore_changes = [
      elasticsearch.hot.size
    ]
  }
}

resource "ec_deployment_traffic_filter" "ingress" {
  name   = "Ingress IPs for ${var.elastic_cluster_name}"
  region = var.elastic_region
  type   = "ip"

  dynamic "rule" {
    for_each = var.allowed_ingress_ips
    content {
      source = rule.value
    }
  }
}