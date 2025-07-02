output "data_factory_name" {
  description = "Azure Data Factory name created"
  value = azurerm_data_factory.etl.name
}

output "data_factory_id" {
  description = "Data Factory resource ID"
  value = azurerm_data_factory.etl.id
}

output "sql_database_name" {
  description = "Nombre de la base de datos analítica"
  value = azurerm_mssql_database.analytics_dw.name
}

output "sql_server_name" {
  description = "Nombre del servidor SQL"
  value = azurerm_mssql_server.sqlserver.name
}

output "sql_server_fqdn" {
  description = "FQDN para conectarse a la base de datos analítica"
  value = azurerm_mssql_server.sqlserver.fully_qualified_domain_name
}