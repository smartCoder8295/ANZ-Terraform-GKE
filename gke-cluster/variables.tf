variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-south1"
}

variable "location" {
  type    = string
  default = "asia-south1-a"
}

variable "cluster_name" {
  type    = string
  default = "sanjay-gke-cluster"
}

variable "initial_node_count" {
  type    = number
  default = 3
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}
