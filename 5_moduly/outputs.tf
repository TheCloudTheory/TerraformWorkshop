# Note, that we're returning the resource from the module as an output.
# This allows us to use it via direct reference without having to use the module's output.

output "acr" {
    value = azurerm_container_registry.acr
    description = "The Azure Container Registry created by the module"
}