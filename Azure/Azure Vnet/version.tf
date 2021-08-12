terraform {
  required_version = "1.0.4" #"~>1.0.0"
  required_providers{
      azurerm={
          version="2.71.0" #"~>2.0"
          source="hashicorp/azurerm"
      }
  }
}

