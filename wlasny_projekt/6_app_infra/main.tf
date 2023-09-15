resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
}

module "storage-account" {
  source = "./modules/storage-account"

  resource_group_name = local.resource_group_name
  location            = var.location
  environment         = var.environment
  project_prefix      = var.project_prefix
  data_containers = [{
    access_type = "private"
    name        = "private"
    },
    {
      access_type = "blob"
      name        = "public"
  }]
  data = {
    blob1 = {
      name           = "foo"
      content        = "bar"
      file_extension = "txt"
    },
    blob2 = {
      name           = "bar"
      content        = "foo"
      file_extension = "sec"
    }
  }
}