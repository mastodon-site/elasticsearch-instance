
############################
#### Scaleway variables ####

variable "scaleway_project_id" {
  description = "Scaleway project ID"
  type        = string
}

variable "scaleway_organization_id" {
  description = "Scaleway organisation ID"
  type        = string
  default     = "9c8b8986-7213-4cbc-b531-fd010fece93e"
}

variable "scaleway_region" {
  description = "Scaleway region ID"
  type        = string
}

variable "scaleway_zone" {
  description = "Scaleway zone ID"
  type        = string
}

############################
##### Module variables #####

variable "elastic_cluster_name" {
  description = "Elastic.co cluster name"
  type        = string
}

variable "elastic_deployment_template_id" {
  type    = string
  default = "aws-storage-optimized-v5"
}

variable "elastic_region" {
  description = "Elastic.co region ID"
  type        = string
  default     = "aws-eu-west-3"
}

variable "elastic_secret_manager_secret_id" {
  description = "Elastic.co organisation API key secret ID"
  type        = string
  default     = "e56ee533-d920-4e06-a45a-e1740c19261f"
}

variable "elasticsearch_node_hot_size" {
  description = "Size to set for the hot nodes in the ES cluster"
  type        = string
  default     = "1g"
}