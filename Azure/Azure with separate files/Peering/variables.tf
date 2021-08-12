variable "subid" {
  type = string
  default = "80f8eb8a-239c-4947-bab0-178644975d6d"
}
variable "resourcegpN" {
    type = string 
}

variable "vnet1N" {
    type = string
    default = "VN1"
}

variable "vnet2N" {
    type = string
    default = "VN2"
}

variable "peering1N" {
  type = string
  default = "VN1toVN2"
}

variable "peering2N" {
  type = string
  default = "VN2toVN1"
}