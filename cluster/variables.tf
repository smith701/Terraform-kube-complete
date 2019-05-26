// General Variables

variable "linux_admin_username" {
  type        = "string"
  description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
}

variable "linux_admin_password" {
  type        = "string"
  description = "The password for the Linux admin account."
}

// GCP Variables
variable "gcp_cluster_count" {
  type        = "string"
  description = "Count of cluster instances to start."
}

variable "project_id" {
  type        = "string"
  description = "project id name"
}

# TF-UPGRADE-TODO: Block type was not recognized, so this block and its contents were not automatically upgraded.
variable "zone" {
  type        = "string"
  description = "project id zone"
}

variable "region" {
  type        = "string"
  description = "project id region"
}

variable "cluster_name" {
  type        = "string"
  description = "Cluster name for the GCP Cluster."
}

// GCP Outputs
output "gcp_cluster_endpoint" {
  value = "ssh ${google_container_cluster.gcp_kubernetes.endpoint}"
}

output "gcp_ssh_command" {
  value = "ssh ${var.linux_admin_username}@${google_container_cluster.gcp_kubernetes.endpoint}"
}

output "gcp_cluster_name" {
  value = "ssh ${google_container_cluster.gcp_kubernetes.name}"
}

