module "naming" {
  source = "Azure/naming/azurerm"
  prefix = ["kam"]
  suffix = ["dev"]
}

locals {
  resource_group_name  = module.naming.resource_group.name
  storage_account_name = module.naming.storage_account.name
  plain_files          = { for f, file in var.data : f => file if file.extension == "txt" }
  secure_files         = { for f, file in var.data : f => file if file.extension == "sec" }
}