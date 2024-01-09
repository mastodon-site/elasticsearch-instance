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

  lifecycle {
    ignore_changes = [
      elasticsearch.hot.size
    ]
  }
}