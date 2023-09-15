terraform {
  backend "azurerm" {
    resource_group_name  = "kmz-rg-tf-backend"
    storage_account_name = "kmzsttfbackend"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    access_key = ""
  }
}