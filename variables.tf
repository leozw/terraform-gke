variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "heyyya-445813"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
  default     = "k8s-heyyya"
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

variable "node_machine_type" {
  description = "Machine type for node pool"
  type        = string
  default     = "n2d-highmem-2"
}

variable "node_disk_size_gb" {
  description = "Disk size for nodes in GB"
  type        = number
  default     = 50
}

variable "node_oauth_scopes" {
  description = "OAuth Scopes for nodes"
  type        = list(string)
  default     = ["https://www.googleapis.com/auth/cloud-platform"]
}

variable "resource_labels" {
  description = "Labels applied to the cluster"
  type        = map(string)
  default     = { env = "prod" }
}

variable "node_count" {
  description = "Initial node count"
  type        = number
  default     = 0
}

variable "min_node_count" {
  description = "Minimum node count for autoscaling"
  type        = number
  default     = 0
}

variable "max_node_count" {
  description = "Maximum node count for autoscaling"
  type        = number
  default     = 5
}

variable "preemptible" {
  description = "Use preemptible nodes?"
  type        = bool
  default     = true
}

variable "vertical_pod_autoscaling_enabled" {
  description = "Enable Vertical Pod Autoscaling"
  type        = bool
  default     = true
}

variable "auto_upgrade" {
  description = "Enable auto upgrade for node pool"
  type        = bool
  default     = true
}

variable "auto_repair" {
  description = "Enable auto repair for node pool"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "prd"
}
