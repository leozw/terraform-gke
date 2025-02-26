resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  network    = var.network_name
  subnetwork = var.subnet_name

  deletion_protection = false

  initial_node_count = 1
  project            = var.project_id

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }

  node_config {
    machine_type    = var.node_machine_type
    oauth_scopes    = var.node_oauth_scopes
    service_account = var.node_service_account
    disk_size_gb    = var.node_disk_size_gb
  }

  vertical_pod_autoscaling {
    enabled = var.vertical_pod_autoscaling_enabled
  }

  resource_labels = var.resource_labels

  lifecycle {
    ignore_changes = [initial_node_count]
  }
}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  location   = google_container_cluster.primary.location
  node_count = var.node_count
  project    = var.project_id

  node_config {
    preemptible     = var.preemptible
    machine_type    = var.node_machine_type
    oauth_scopes    = var.node_oauth_scopes
    service_account = var.node_service_account
    disk_size_gb    = var.node_disk_size_gb
  }

  management {
    auto_upgrade = var.auto_upgrade
    auto_repair  = var.auto_repair
  }

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }
}
