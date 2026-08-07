
resource "azurerm_resource_group" "rg_test1" {
  name     = "rg_test"
  location = "westus"

}

resource "azurerm_storage_account" "st_test1" {
  name                     = "storagetest1"
  location                 = "westus"
  resource_group_name      = azurerm_resource_group.rg_test1.name
  account_tier             = "Standard"
  account_replication_type = "GRS"

}