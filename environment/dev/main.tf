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

module "compute" {
  depends_on = [ module.pips ]
  source = "../../modules/azurerm_compute"
  vms = var.vms
}

// First comes server, and then the databse

module "sql_server" {
  source = "../../modules/azurerm_sql_server"
  adminusername = "infraadmin"
  adminpassword = "infrap@$$wOrd"
  rg_name = "infra-dev-rgs01" 
  sql_servername = "infra-sql-server"
  sql_serverlocation =  "EastUS"
  tags = {}
}

module "sql_db" {
  depends_on = [ module.sql_server ]
  source = "../../modules/azurerm_sql_database"
  max_sizegb = "3"
  sql_dbname = "infra-sql-db"
  sql_serverid = module.sql_server.id
  tags = {}

}