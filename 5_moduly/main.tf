# https://registry.terraform.io/modules/Azure/naming/azurerm/latest
# A public module available via the Terraform Module Registry.
# Allows to generate names for Azure resources.
module "naming" {
  source = "Azure/naming/azurerm"
  prefix = ["kam"]
  suffix = ["dev"]
}

resource "azurerm_resource_group" "example" {
  name     = module.naming.resource_group.name # Using output from the module
  location = "West Europe"
}