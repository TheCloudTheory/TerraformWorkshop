resource "azurerm_virtual_network" "vnet" {
  name                = local.virtual_network_name
  resource_group_name = local.resource_group_name
  location            = var.location
  address_space       = ["10.0.0.0/24"]

  depends_on = [azurerm_resource_group.rg]
}