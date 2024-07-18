variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "network_name" {
  description = "VPC Network Name"
  type        = string
}

variable "subnet_name" {
  description = "Subnetwork Name"
  type        = string
}

variable "node_service_account" {
  description = "Node Service Account Email"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}
