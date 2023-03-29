terraform {
  required_providers {
    vra = {
      source = "vmware/vra"
      version = "0.7.0"
    }
  }
}

provider "vra" {
  url           = var.url
  refresh_token = var.refresh_token
  insecure      = var.insecure
}