
variable "x" {
    
  
}

resource "azurerm_resource_group" "rg_dev1" {
    for_each = (var.x)
    name = each.key
    location = each.value
  
}