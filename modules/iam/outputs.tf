output "gke_service_account_email" {
  value = google_service_account.gke_service_account.email
}

output "gke_node_service_account_email" {
  value = google_service_account.gke_node_service_account.email
}
