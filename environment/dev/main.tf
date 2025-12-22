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

module "pips" {
  depends_on = [ module.keyvault ]
  source = "../../modules/azurerm_public_ip"
  public_ips = var.public_ips
}

# module "compute" {
#   depends_on = [ module.pips ]
#   source = "../../modules/azurerm_compute"
#   vms = var.vms
# }

