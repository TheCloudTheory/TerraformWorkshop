module "virtual-network" {
  source = "./modules/virtual-network"

  resource_group_name = local.resource_group_name
  location            = var.location
  environment         = var.environment
  project_prefix      = var.project_prefix

  depends_on = [azurerm_resource_group.rg]
}