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