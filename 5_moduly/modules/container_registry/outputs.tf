# Outputs define values that are highlighted to the user when Terraform applies a configuration.
# This is especially useful for values that are not known until apply time, such as IP addresses.
# A good practice is to output all values that are required for other configurations to work correctly.

output "acr_name" {
  value = azurerm_container_registry.acr.name
  description = "The name of the Azure Container Registry"
}

output "acr_id" {
    value = azurerm_container_registry.acr.id
    description = "The ID of the Azure Container Registry"
}