module "gke_network" {
  source      = "./modules/network"
  project_id  = var.project_id
  region      = var.region
  network_name = var.network_name
  subnet_name  = var.subnet_name
}

module "gke_iam" {
  source     = "./modules/iam"
  project_id = var.project_id
}

module "gke_cluster" {
  source               = "./modules/gke"
  project_id           = var.project_id
  region               = var.region
  network_name         = module.gke_network.network_name
  subnet_name          = module.gke_network.subnet_name
  node_service_account = module.gke_iam.gke_node_service_account_email
  cluster_name         = var.cluster_name
}

output "cluster_name" {
  value = module.gke_cluster.cluster_name
}

output "cluster_endpoint" {
  value = module.gke_cluster.cluster_endpoint
}

output "kubeconfig" {
  value = module.gke_cluster.kubeconfig
}
