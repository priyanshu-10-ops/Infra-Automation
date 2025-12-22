module "rgs" {
  source = "../../modules/azurerm_resource_group"
  rgs = var.rgs
}

module "vnet" {
  depends_on = [ module.rgs ]
  source = "../../modules/azurerm_networking"
  vnets = var.vnets
}

module "keyvault" {
  depends_on = [ module.vnet ]
  source = "../../modules/azurerm_keyvault"
  kvs = var.kvs
}

