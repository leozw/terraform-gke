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

variable "node_machine_type" {
  description = "Machine type for node pool"
  type        = string
}

variable "node_disk_size_gb" {
  description = "Disk size for nodes in GB"
  type        = number
}

variable "node_oauth_scopes" {
  description = "OAuth Scopes for nodes"
  type        = list(string)
}

variable "resource_labels" {
  description = "Labels applied to the cluster"
  type        = map(string)
}

variable "node_count" {
  description = "Initial node count"
  type        = number
}

variable "min_node_count" {
  description = "Minimum node count for autoscaling"
  type        = number
}

variable "max_node_count" {
  description = "Maximum node count for autoscaling"
  type        = number
}

variable "preemptible" {
  description = "Use preemptible nodes?"
  type        = bool
}

variable "vertical_pod_autoscaling_enabled" {
  description = "Enable Vertical Pod Autoscaling"
  type        = bool
}

variable "auto_upgrade" {
  description = "Enable auto upgrade for node pool"
  type        = bool
}

variable "auto_repair" {
  description = "Enable auto repair for node pool"
  type        = bool
}
