module "virtual-network" {
  source = "github.com/TheCloudTheory/terraform-module-virtual-network?ref=1.0.0"

  resource_group_name = local.resource_group_name
  location            = var.location
  environment         = var.environment
  project_prefix      = var.project_prefix
  tags                = var.tags

  depends_on = [azurerm_resource_group.rg]
}