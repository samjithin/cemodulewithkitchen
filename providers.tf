provider "google" {
  project = var.project_name
  region  = var.region_name
  zone    = var.zone_name
}

#terraform {
#  backend "gcs" {
#    bucket = "terrabucket91"
#    prefix = "terraform/modulestate"
#  }
#}