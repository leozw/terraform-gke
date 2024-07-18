variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "winks-and-drinks-2024"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "southamerica-east1"
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
  default     = "k8s-winks-and-drinks"
}

variable "network_name" {
  description = "VPC Network Name"
  type        = string
  default     = "gke-network"
}

variable "subnet_name" {
  description = "Subnetwork Name"
  type        = string
  default     = "gke-subnet"
}

variable "node_service_account" {
  description = "Node Service Account Email"
  type        = string
}
