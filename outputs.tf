output "cluster_name" {
  value = module.gke_cluster.cluster_name
}

output "cluster_endpoint" {
  value = module.gke_cluster.cluster_endpoint
}

output "kubeconfig" {
  value = module.gke_cluster.kubeconfig
}
