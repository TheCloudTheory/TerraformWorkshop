# This resource will create a random suffix for ACR name.
# Note: It uses hashicorp/random implicitly meaning we didn't have to specify it in the `required_providers` block.
resource "random_string" "random_suffix" {
  length  = 6
  special = false
}

# This resource will create an Azure Container Registry.
# Note: Even though it uses AzureRM provider, we didn't have to specify it in the `required_providers` block.
# Terraform would automatically install the latest version, but as we're using that configuration as a module,
# it'll use the version specified in the root configuration.
resource "azurerm_container_registry" "acr" {

  # The name is generated using the random suffix resource.
  # Because of that, the name will be different every time we run `terraform apply` - unless we didn't change the configuration.
  name                     = "acr${random_string.random_suffix.result}"
  
  resource_group_name      = var.resource_group_name # Note: We're using values passed from the root configuration.
  location                 = var.location # Note: We're using values passed from the root configuration.
  sku                      = "Basic"
  admin_enabled            = false
}