
resource "azurerm_resource_group" "rg_test2" {
    name = "rg_test1"
    location = "westus"
  
}

resource "azurerm_storage_account" "st_test" {
    depends_on = [azurerm_resource_group.rg_test2]
  name = "storage1"
location = "westus"
resource_group_name = "rg_test1"
account_tier = "Standard"
account_replication_type = "LRS"

}