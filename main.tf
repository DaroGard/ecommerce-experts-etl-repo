provider "azurerm" {
    subscription_id = var.subscription_id
    features {}
}

data "azurerm_resource_group" "rg" {
  name = "rg-${var.project}-${var.enviroment}"
}

