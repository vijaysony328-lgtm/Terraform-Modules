terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0.0"
    }
  }

    # backend "azurerm" {
    #   resource_group_name = "rg_backend"
    #   storage_account_name = "backendemo"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    #   container_name       = "storagebackend"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    #   key                  = "prod.terraform.storagebackend"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    # }
}


provider "azurerm" {
  features {

  }
}