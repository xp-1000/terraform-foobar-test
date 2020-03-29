terraform {
  required_version = "~> 0.12"
}

provider "signalfx" {
  auth_token = var.sfx_token
  api_url    = "https://api.eu0.signalfx.com"
}

module "consul_servers" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  # source = "git::git@github.com:hashicorp/terraform-aws-consul.git//modules/consul-cluster?ref=v0.0.1"
  source = "./modules/cloud/aws"
}
