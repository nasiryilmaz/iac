module "blob_storage" {
  source = "../modules/blob_storage"

  resource_group_name     = "rg-iac-dev"
  location                = "eastus"
  storage_account_name    = "iacstorageacctdev"
  account_tier            = "Standard"
  replication_type        = "LRS"
  container_name          = "container_a"
  container_access_type   = "private"
}
