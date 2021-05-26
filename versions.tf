terraform {
  required_version = ">= 0.13.0"

  required_providers {
    spotinst = {
      source  = "hashicorp/helm"
      version = "~> 2.1"
    }
  }
}
