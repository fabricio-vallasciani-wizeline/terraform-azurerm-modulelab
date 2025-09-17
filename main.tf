provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "secure_storage_account_resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "secure" {
  name                          = var.storage_account_name
  location                      = azurerm_resource_group.secure_storage_account_resource_group.location
  resource_group_name           = azurerm_resource_group.secure_storage_account_resource_group.name
  account_replication_type      = "LRS"
  account_tier                  = "Standard"
  public_network_access_enabled = false

  tags = {
    environment = var.environment
  }

}