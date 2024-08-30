variable "elastic_cluster_name" {
  description = "Elastic.co cluster name"
  type        = string
}

variable "elastic_deployment_template_id" {
  type    = string
  default = "aws-storage-optimized"
}

variable "elastic_region" {
  description = "Elastic.co region ID"
  type        = string
  default     = "aws-eu-west-3"
}

variable "elasticsearch_node_hot_size" {
  description = "Size to set for the hot nodes in the ES cluster"
  type        = string
  default     = "1g"
}

variable "elastic_secret_manager_secret_id" {
  description = "Elastic.co organisation API key secret ID"
  type        = string
}

variable "allowed_ingress_ips" {
  description = "A list of IP addresses or ranges to allow acces to the cluster"
  type        = list(string)
}