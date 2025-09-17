terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.43.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription_id
}

resource "azurerm_resource_group" "secure_storage_account_resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "secure" {
  name                          = var.storage_account_name
  location                      = azurerm_resource_group.secure_storage_account_resource_group.location
  resource_group_name           = azurerm_resource_group.secure_storage_account_resource_group.name
  account_replication_type      = var.environment == "Production" ? "GRS" : "LRS"
  account_tier                  = "Standard"
  public_network_access_enabled = false

  tags = local.tags
}