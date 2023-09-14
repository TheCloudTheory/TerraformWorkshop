resource "azurerm_resource_group" "rg" {
  name     = "rg-kamz-tf"
  location = "westeurope"
}

resource "azurerm_resource_group" "rg2" {
  name     = "rg-kamz-tf2"
  location = "westeurope"
}

resource "azurerm_container_registry" "acr" {
  name                     = "acrkamztf"
  resource_group_name      = azurerm_resource_group.rg2.name
  location                 = azurerm_resource_group.rg2.location
  sku                      = "Basic"
}