data "azurerm_resource_group" "dev_rg" {
  name = "rg-kamz-tf2"
}

resource "azurerm_container_registry" "acr" {
  name                = "acrkamztf"
  resource_group_name = data.azurerm_resource_group.dev_rg.name
  location            = data.azurerm_resource_group.dev_rg.location
  sku                 = var.acr_sku_name
  admin_enabled       = true
  tags                = var.tags2
}