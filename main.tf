provider "azurerm" {
    subscription_id = var.subscription_id
    features {}
}

resource "azurerm_resource_group" "rg" {
    name = "rg-${var.project}-${var.enviroment}"
    location = var.location
    
    tags = var.tags
}

resource "azurerm_storage_account" "datalake" {
  name                     = "dl${var.project}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true
  min_tls_version          = "TLS1_2"

  tags = var.tags 
}