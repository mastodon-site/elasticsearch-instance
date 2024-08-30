provider "ec" {
  apikey = base64decode(data.scaleway_secret_version.elastic_api_key.data)
}

data "scaleway_secret_version" "elastic_api_key" {
  secret_id = var.elastic_secret_manager_secret_id
  revision  = "latest"
}