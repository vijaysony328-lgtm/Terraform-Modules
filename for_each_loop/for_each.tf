
variable "rg_name" {
  type = list(string)
}

resource "azurerm_resource_group" "rg_prod" {
  for_each = toset(var.rg_name)
  name     = each.value
  location = "westus"
}