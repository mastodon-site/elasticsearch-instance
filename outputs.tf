output "elasticsearch_username" {
  value = ec_deployment.cluster.elasticsearch_username
}

output "elasticsearch_password" {
  value     = ec_deployment.cluster.elasticsearch_password
  sensitive = true
}

output "elasticsearch_cluster_id" {
  value = ec_deployment.cluster.id
}

output "elasticsearch_cluster_name" {
  value = var.elastic_cluster_name
}

output "elasticsearch_cluster_hostname" {
  value = ec_deployment.cluster.kibana.https_endpoint
}