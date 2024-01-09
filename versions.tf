terraform {
  required_providers {
    ec = {
      source  = "elastic/ec"
      version = ">= 0.9.0"
    }

    scaleway = {
      source  = "scaleway/scaleway"
      version = ">= 2.35"
    }
  }
  required_version = ">= 1.3"
}