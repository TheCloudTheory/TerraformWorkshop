# Terraform Azure Provider - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

# `terraform` block defines providers, which are plugins 
# that Terraform uses to translate the code into API calls.
terraform {
  required_providers {

    # The `azurerm` provider allows Terraform to interact with Azure APIs.
    azurerm = {
      source  = "hashicorp/azurerm" # The source argument is the namespace and name of the provider.
      version = "3.72.0"            # The version argument specifies which version of the provider to use.
    }
  }

  # Parameter `experimetns` allows to enable or disable experimental features.
  # experiments = [example]
}

provider "azurerm" {
  # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions 
  # to register Azure Resource Providers.
  skip_provider_registration = true
  features {}
}