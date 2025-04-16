module "blob_storage" {
  source                 = "../../modules/blob_storage"
  resource_group_name    = "rg-iac-dev-east"
  location               = "East US"
  storage_account_name   = "iacdevstorage01"
  account_tier           = "Standard"
  replication_type       = "LRS"
  container_name         = "iac-container"
  container_access_type  = "private"
}
