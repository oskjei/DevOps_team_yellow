#Subscription id
variable "subid" {
  type = string
}

#Resource group name and location
variable "resourcegpN" {
    type = string 
}

variable "location" {
    type = string
}

#Name of virtual networks
variable "vnet1N" {
    type = string
}

variable "vnet2N" {
    type = string
}

#Address Spaces
variable "addvnet1" {
    type = list(string)
}

variable "addvnet2" {
    type = list(string)
}

#Names of peering VNet
variable "peering1N" {
  type = string
}

variable "peering2N" {
  type = string
}
