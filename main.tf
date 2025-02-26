module "gke_network" {
  source       = "./modules/network"
  project_id   = var.project_id
  region       = var.region
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

  node_machine_type                = var.node_machine_type
  node_disk_size_gb                = var.node_disk_size_gb
  node_oauth_scopes                = var.node_oauth_scopes
  resource_labels                  = var.resource_labels
  node_count                       = var.node_count
  min_node_count                   = var.min_node_count
  max_node_count                   = var.max_node_count
  preemptible                      = var.preemptible
  vertical_pod_autoscaling_enabled = var.vertical_pod_autoscaling_enabled
  auto_upgrade                     = var.auto_upgrade
  auto_repair                      = var.auto_repair
}
