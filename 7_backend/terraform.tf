terraform {
    # Block `backend` defines a backend configuration for Terraform to use.
    # There are multiple types of backends supported by Terraform, but we
    # will use `azurerm` backend for this example.
    # Each backend has its own settings, described in the documentation.
    # https://developer.hashicorp.com/terraform/language/settings/backends/azurerm
    backend "azurerm" {
        resource_group_name  = "rg-terraform"
        storage_account_name = "stterraformbackend"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}