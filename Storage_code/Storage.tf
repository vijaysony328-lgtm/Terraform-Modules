
resource "azurerm_resource_group" "rg_dev1" {
  name     = "rg_dev"
  location = "eastus"
}

resource "azurerm_storage_account" "st_dev1" {
  name                     = "stdev"
  location                 = "eastus"
  resource_group_name      = "rg_dev"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}