terraform {
  cloud {
    organization = "Test"
    workspaces {
      name = "Workspace1"
    }
  }
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.48.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id     = "var.clientId"
  oauthclient_secret = "var.clientSecret"
  aws_region         = "eu-central-1"
}