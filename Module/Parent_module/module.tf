


module "rg_module" {
  source  = "../Root_Module/Resource_group"
  rg_name = var.rg_name

}

module "storage_module" {
  source               = "../Root_Module/Storage_group"
  storage_account_name = var.storage_account_name
  depends_on           = [module.rg_module, module.vnet_module, module.subnet_module]
}

module "vnet_module" {
  source     = "../Root_Module/Virtul_network"
  vnet_name  = var.vnet_name
  depends_on = [module.rg_module]
}

module "subnet_module" {
  source      = "../Root_Module/Subnet"
  subnet_name = var.subnet_name
  depends_on  = [module.vnet_module]
}

