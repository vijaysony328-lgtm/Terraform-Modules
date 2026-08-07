
# variable can user 3 type.

# 1. first type :- value entered on run time.
variable "rg_name" {

}

resource "azurerm_resource_group" "rg_dev12" {
    name = var.rg_name
    location = "westus"
  
}

# 2. second type :- default value set.
variable "rg_name1" {
    type = string
    default = "rg_dev_1"
  
}

variable "location_name" {
    type = string
    default = "westus"
  
}
resource "azurerm_resource_group" "rg_dev23" {
    name = var.rg_name1
    location = var.location_name
  
}

# 3. thrid type :- value assigned in terraform.tfvars file
variable "rg_name2" {
    type = string
     }
variable "location_name2" {
    type = string
     }

     resource "azurerm_resource_group" "rg_dev33" {
    name = var.rg_name2
    location = var.location_name2
     }