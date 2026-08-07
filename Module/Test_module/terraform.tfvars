
rg_name = {
  rg1 = {
    name     = "rg_test1"
    location = "eastus"
  }
  rg2 = {
    name     = "rg2"
    location = "westus"
  }
}

storage_account_name = {
  sa1 = {
    name                     = "sttest2331"
    resource_group_name      = "rg_test1"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "stest782"
    resource_group_name      = "rg2"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_name = {
  vnet1 = {
    name                = "vnet_test1"
    resource_group_name = "rg_test1"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
} }

subnet_name = {
  subnet1 = {
    name                 = "subnet_test1"
    resource_group_name  = "rg_test1"
    virtual_network_name = "vnet_test1"
    address_prefixes     = ["10.0.1.0/24"]
} }



