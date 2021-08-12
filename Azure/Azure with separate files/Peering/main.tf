provider "azurerm" {
  subscription_id= var.subid
  features {}
}

resource "azurerm_virtual_network_peering" "VNET1toVNET2" {
  name = var.peering1N
  resource_group_name = data.azurerm_resource_group.RGN.name
  virtual_network_name = data.azurerm_virtual_network.VNET1.name
  remote_virtual_network_id = data.azurerm_virtual_network.VNET2.id
}

resource "azurerm_virtual_network_peering" "VNET2toVNET1" {
  name = var.peering2N
  resource_group_name = data.azurerm_resource_group.RGN.name
  virtual_network_name = data.azurerm_virtual_network.VNET2.name
  remote_virtual_network_id = data.azurerm_virtual_network.VNET1.id
}