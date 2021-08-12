provider "azurerm" {
  subscription_id= var.subid
  features {}
}

resource "azurerm_resource_group" "RGN" {
  name = var.resourcegpN
  location = var.location
}