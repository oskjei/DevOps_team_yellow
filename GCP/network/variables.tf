
#Name of virtual networks
variable "vnet1N" {
    type = string
    default = "vn1"
}

variable "vnet2N" {
    type = string
    default = "vn2"
}

#Names of peering VNet
variable "peering1N" {
  type = string
  default = "vn1tovn2"
}

variable "peering2N" {
  type = string
  default = "vn2tovn1"
}
variable "project" { }

variable "credentials_file" { }

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}