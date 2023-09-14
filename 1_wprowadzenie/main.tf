# https://www.terraform.io/docs/language/resources/index.html
# Block `resource` allows to define resources that will be created in the cloud.
# Definition: resource <resource_type> <resource_name> { ... }
# Note: Available types of resources depend on the provider.
# Note: Resource names must be unique within a configuration.
# Note: Resource names must start with a letter and may contain only letters, digits, underscores, and dashes.
# Note: Resource names must be 1-90 characters long.
# Note: <resource_name> is used to reference the resource in Terraform.
resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-training"
  location = "westeurope"
}

# Block `module` allows to use modules.
# Definition: module <module_name> { ... }
# Note: <module_name> is used to reference the module in Terraform.
# Note: Module names must be unique within a configuration.
# Note: Module names must start with a letter and may contain only letters, digits, underscores, and dashes.
# Note: Module names must be 1-90 characters long.
# Note: You can reference local or remote modules without major changes to the configuration.
module "acr" {
  source = "./modules/container_registry"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}