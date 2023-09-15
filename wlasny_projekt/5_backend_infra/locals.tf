module "naming" {
  source = "Azure/naming/azurerm"
  prefix = ["kmz"]
  suffix = ["tf", "backend"]
}

locals {
  resource_group_name  = module.naming.resource_group.name
  storage_account_name = module.naming.storage_account.name
}