# Creating a VM instance

/*resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      # image = "debian-cloud/debian-9"
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.VNET1.name
    access_config {
    }
  }

}
resource "google_compute_instance" "vm_instance_2" {
  name         = "terraform-instance_2"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      # image = "debian-cloud/debian-9"
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.VNET2.name
    access_config {
    }
  }

}*/
# name (Required) - Name of peering
# network (Required) - The primary network of the peering
# peer_network (Required) - The peer network in the peering. The peer network may belong to a different project. 
# auto_create_routes (Optional) - If set to true, the routes between the two networks will be created and managed automatically.

resource "google_compute_network_peering" "VNET1toVNET2" {
  name         = var.peering1N
  network      = google_compute_network.VNET1.id
  peer_network = google_compute_network.VNET2.id
}

resource "google_compute_network_peering" "VNET2toVNET1" {
  name         = var.peering2N
  network      = google_compute_network.VNET2.id
  peer_network = google_compute_network.VNET1.id
}

resource "google_compute_network" "VNET1" {
  name                    = var.vnet1N
  auto_create_subnetworks = "false"
}

resource "google_compute_network" "VNET2" {
  name                    = var.vnet2N
  auto_create_subnetworks = "false"
}
