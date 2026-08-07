
module "rg" {
  source = "../Rg"
  rg_x   = var.rg_x

}

module "st" {
  source = "../st"
  st_y   = var.st_y


  depends_on = [module.rg]

}