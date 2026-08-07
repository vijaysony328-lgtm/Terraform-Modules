
resource "azurerm_resource_group" "rg_test1" {
  name     = "rg_test2"
  location = "West Europe"

}

resource "azurerm_storage_account" "storagetest1" {
  name                     = "storagedev1"
  location                 = "West Europe"
  resource_group_name      = "rg_test2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}