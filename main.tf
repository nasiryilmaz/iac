provider "azurerm" {
  features {}
}

module "blob_storage" {
  source               = "./modules/blob_storage"
  resource_group_name  = "tf-blob-rg"
  storage_account_name = "tfcstorageaccount01"
  container_name       = "tf-container"
  blob_size_mb         = 4096
}
