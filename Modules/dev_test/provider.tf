
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0.0"

    }
  }

  backend "azurerm" {
    storage_account_name = "backendst555"
    resource_group_name  = "backend_rg"
    container_name       = "st12345678"
    key                  = "backend.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}