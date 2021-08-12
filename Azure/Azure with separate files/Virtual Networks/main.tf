provider "azurerm" {
  subscription_id= var.subid
  features {}
}

resource "azurerm_virtual_network" "VNET1" {
  name = var.vnet1N
  location = var.location
  resource_group_name = data.azurerm_resource_group.RGN.name
  address_space = var.addvnet1
}

resource "azurerm_virtual_network" "VNET2" {
  name = var.vnet2N
  location = var.location
  resource_group_name = data.azurerm_resource_group.RGN.name
  address_space = var.addvnet2
}