terraform {
  required_version = "~> 0.12"
}

provider "signalfx" {
  auth_token = var.sfx_token
  api_url    = "https://api.eu0.signalfx.com"
}

