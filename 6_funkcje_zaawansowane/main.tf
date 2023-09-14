resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = local.storage_account_name
  resource_group_name      = local.resource_group_name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  count = length(var.data_containers)

  name                  = var.data_containers[count.index].name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = var.data_containers[count.index].access_type
}

resource "azurerm_storage_blob" "plain_file" {
  for_each = local.plain_files

  name                   = "${each.value.name}.${each.value.extension}}"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = var.data_containers[index(var.data_containers.*.name, "public")].name
  type                   = "Block"
  source                 = each.value.content
}

resource "azurerm_storage_blob" "secure_file" {
  for_each = local.secure_files

  name                   = "${each.value.name}.${each.value.extension}}"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = var.data_containers[index(var.data_containers.*.name, "private")].name
  type                   = "Block"
  source                 = each.value.content
}
