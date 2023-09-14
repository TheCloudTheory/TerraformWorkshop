# Block `import` allows to import existing resources into Terraform state.
# As opposite to `terraform import` command, it provides a way to import resources into Terraform state in a declarative way.
import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-terraform-kam"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${local.resource_suffix}}" # Using string interpolation to create a name
  location = "westeurope"
}