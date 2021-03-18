resource "google_compute_network" "vpc" {
  name                    = "modulenetwork"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "sub1"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region_name
  network       = google_compute_network.vpc.name
}

resource "google_compute_firewall" "fw" {
  name    = "vpc-firewall"
  network = google_compute_network.vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000","22"]
  }

  source_tags = ["web"]
}


resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_size
  tags         = ["web", "dev"]

  labels = {
    environment = "dev"
  }

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.subnet.name
    access_config {
    }
  }
}