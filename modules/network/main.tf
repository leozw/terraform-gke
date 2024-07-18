resource "google_compute_network" "vpc_network" {
  name    = var.network_name
  project = var.project_id
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnet_name
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.vpc_network.self_link
  region        = var.region
  project       = var.project_id

  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = "10.1.0.0/16"
  }

  secondary_ip_range {
    range_name    = "services"
    ip_cidr_range = "10.2.0.0/20"
  }
}
