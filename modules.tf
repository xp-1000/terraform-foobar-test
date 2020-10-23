# ---------------------------------------------------------------------------------------------------------------------
# SIGNALFX MODULES OF DETECTORS
# This repository contains generic pre-built detectors for SignalFx broken down into multiple terraform modules.
# It aims to speed up alerting deployment and apply infrastructure as code process to monitoring.
# It could also be a place to collect, share and improve alerting rules on popular tools and environments through SignalFx.
# Note that these templates implementation is opinionated and enforce best practices which ensure homogeneity but will 
# also restrict the usage and capabilities even if it tries to provide as much flexibility as possible.
# ---------------------------------------------------------------------------------------------------------------------

module "kubernetes-node" {
  source = "./modules/caas/kubernetes/node"
}

module "kubernetes-cluster" {
  source = "./modules/caas/kubernetes/cluster"
}

module "kubernetes-common" {
  source = "./modules/caas/kubernetes/common"
}

module "cloud-common" {
  source = "./modules/cloud/common"
}
module "cloud-aws" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  # source = "git::git@github.com:hashicorp/terraform-aws-consul.git//modules/consul-cluster?ref=v0.0.1"
  source = "./modules/cloud/aws"
}

