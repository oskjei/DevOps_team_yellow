provider "azurerm" {
  subscription_id= var.subid
  features {}
}

resource "azurerm_resource_group" "RGN" {
  name = var.resourcegpN
  location = var.location
}

resource "azurerm_virtual_network" "VNET1" {
  name = var.vnet1N
  location = var.location
  resource_group_name = azurerm_resource_group.RGN.name
  address_space = var.addvnet1
}

resource "azurerm_virtual_network" "VNET2" {
  name = var.vnet2N
  location = var.location
  resource_group_name = azurerm_resource_group.RGN.name
  address_space = var.addvnet2
}

#Create peering between the two VNets by configuring the relation
#between them in two blocks

resource "azurerm_virtual_network_peering" "VNET1toVNET2" {
  name = var.peering1N
  resource_group_name = azurerm_resource_group.RGN.name
  virtual_network_name = var.vnet1N
  remote_virtual_network_id = azurerm_virtual_network.VNET2.id
}

resource "azurerm_virtual_network_peering" "VNET2toVNET1" {
  name = var.peering2N
  resource_group_name = azurerm_resource_group.RGN.name
  virtual_network_name = var.vnet2N
  remote_virtual_network_id = azurerm_virtual_network.VNET1.id
}

