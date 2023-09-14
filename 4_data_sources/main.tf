# Block `data` allows to define data sources.
# Data source is a read-only view of some external resource.
# Use it to fetch data that can be used elsewhere in Terraform configuration.
data "azurerm_resource_group" "rg" {
  name = "rg-${local.external_resource_suffix}}"
}

resource "azurerm_storage_account" "sa" {
  name                     = "sa${local.resource_suffix_clean}}" # Using string interpolation to create a name
  resource_group_name      = data.azurerm_resource_group.rg.name # Note: Using data source to fetch resource group name
  location                 = data.azurerm_resource_group.rg.location # Note: Using data source to fetch resource group location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}