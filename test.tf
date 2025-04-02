terraform {
  cloud {
    organization = "Test"
    workspaces {
      name = "Workspace2"
    }
  }
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.59.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id     = "var.clientId"
  oauthclient_secret = "var.clientSecret"
  aws_region         = "eu-central-1"
}