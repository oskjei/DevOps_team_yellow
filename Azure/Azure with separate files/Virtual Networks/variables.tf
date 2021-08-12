variable "subid" {
  type = string
  default = "80f8eb8a-239c-4947-bab0-178644975d6d"
}

variable "resourcegpN" {
    type = string 
}

variable "location" {
  type = string
  default = "westeurope"
}

variable "vnet1N" {
    type = string
}

variable "vnet2N" {
    type = string
}

variable "addvnet1" {
    type = list(string)
}

variable "addvnet2" {
    type = list(string)
}