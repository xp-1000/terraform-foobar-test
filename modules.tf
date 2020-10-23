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
