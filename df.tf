resource "azurerm_data_factory" "etl" {
    name = "df-${var.project}-${var.enviroment}"
    location = var.location
    resource_group_name = data.azurerm_resource_group.rg.name

    identity {
      type="SystemAssigned"
    }
  
}