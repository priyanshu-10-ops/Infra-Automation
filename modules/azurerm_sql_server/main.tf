resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_servername
  resource_group_name          = var.rg_name
  location                     = var.sql_serverlocation
  version                      = "12.0"
  administrator_login          = var.adminusername
  administrator_login_password = var.adminpassword
  tags = var.tags
}