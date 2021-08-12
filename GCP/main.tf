provider "google" {
    credentials = file(var.credentials_file)
    project = var.project
    region = var.region
    zone = var.zone 
}
module "run_network_module" {
    source = ".//network"
    // Required arguments without default
    credentials_file = var.credentials_file
    project = var.project
}