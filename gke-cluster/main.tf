terraform {
  required_version = ">= 1.3.0"

  backend "gcs" {
    bucket = "murali-test-devops1"         # ✅ Your existing bucket
    prefix = "gke-cluster/terraform-state" # ✅ Folder path inside the bucket
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}
provider "google" {
  project = var.project_id
  region  = var.region
  zone        = "asia-south1-a"
}

module "gke" {
  source             = "./modules/gke"
  project_id         = var.project_id
  region             = var.region
  cluster_name       = var.cluster_name
  location           = var.location
  initial_node_count = var.initial_node_count
  machine_type       = var.machine_type
}
