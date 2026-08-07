
resource "azurerm_resource_group" "rg_dev123" {
  
  for_each = var.rg_x
name = each.key

location = each.value
}