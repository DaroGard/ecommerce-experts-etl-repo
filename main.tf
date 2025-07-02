provider "azurerm" {
    subscription_id = var.subscription_id
    features {}
}

data "azurerm_resource_group" "rg" {
  name = "rg-${var.project}-${var.enviroment}"
}

data "azurerm_arc_resource_bridge_appliance" "rba" {
    name = "rba-${var.project}-${var.enviroment}"
    resource_group_name = azurerm_resource_group.rg.name
}