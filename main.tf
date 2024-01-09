terraform {
  backend "s3" {}
  required_version = "> 1.0.0"
}

provider "scaleway" {
  zone            = var.scaleway_zone
  region          = var.scaleway_region
  project_id      = var.scaleway_project_id
  organization_id = var.scaleway_organization_id
}

provider "ec" {
  apikey = base64decode(data.scaleway_secret_version.elastic_api_key.data)
}

data "scaleway_secret_version" "elastic_api_key" {
  secret_id = var.elastic_secret_manager_secret_id
  revision  = "latest"
}