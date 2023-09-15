resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = "westeurope"
}

resource "azurerm_storage_account" "sa" {
  name                     = local.storage_account_name
  resource_group_name      = local.resource_group_name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}