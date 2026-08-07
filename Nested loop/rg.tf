




resource "azurerm_resource_group" "rg_dev55" {

  for_each = (var.rg_abc)
  name     = each.value.name
  location = each.value.location

}

resource "azurerm_storage_account" "st_dev1" {

  for_each                 = var.st_x
  name                     = each.value.name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  resource_group_name      = each.value.resource_group_name


}
