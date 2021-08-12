data "azurerm_resource_group" "RGN" {
  name = var.resourcegpN
}

data "azurerm_virtual_network" "VNET1" {
  name = var.vnet1N
  resource_group_name = data.azurerm_resource_group.RGN.name
}

data "azurerm_virtual_network" "VNET2" {
  name = var.vnet2N
  resource_group_name = data.azurerm_resource_group.RGN.name
}