resource "azurerm_resource_group" "rg" {
  name     = "rg-${local.resource_suffix}}" # Using string interpolation to create a name
  location = "westeurope"
}

resource "azurerm_storage_account" "sa" {
  name                     = "sa${local.resource_suffix_clean}}" # Using string interpolation to create a name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = "data"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "sb" {
  name                   = "data.json"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sc.name
  type                   = "Block"
  source                 = "./data.json" # Terraform will upload this file to the storage account
}