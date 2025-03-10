terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "storage_rg" {
  name     = "tf-blob-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "tfblobstorage$(random_id.storageid.hex)"
  resource_group_name      = azurerm_resource_group.storage_rg.name
  location                 = azurerm_resource_group.storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "tf-container"
  storage_account_name  = azurerm_resource_group.storage_rg.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob_file" {
  name                   = "4gbfile.vhd"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.storage_container.name
  type                   = "Page"
  size                   = 4096 # Size in MB (4GB)
}
