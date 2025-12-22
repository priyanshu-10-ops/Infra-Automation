module "rgs" {
  source = "../../modules/azurerm_resource_group"
  rgs = var.rgs
}

module "vnet" {
  depends_on = [ module.rgs ]
  source = "../../modules/azurerm_networking"
  vnets = var.vnets
}


