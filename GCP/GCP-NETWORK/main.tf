terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("../gcp-svc.json")
  project     = "tribes-internal-services"
  region      = "europe-north1"
  zone        = "europe-north1-a"
}

resource "google_compute_network" "DevOps" {
  name = "terraform-network"
}
