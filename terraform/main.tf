provider "google" {
  project = "clgcporg8-072"
  region  = "us-central1"
}

module "kubernetes-engine" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "33.1.0"
  # insert the 6 required variables here
  ip_range_pods     = "clgcporg8-072-gke-01-pods"
  ip_range_services = "clgcporg8-072-gke-01-services"
  name              = "gcp-devops-project"
  project_id        = "clgcporg8-072"
  network           = "vpc-01"
  subnetwork        = "us-central1-01"
}