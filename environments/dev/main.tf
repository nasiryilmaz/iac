module "blob_storage_data01" {
  source                 = "../../modules/blob_storage"
  resource_group_name    = "rg-iac-dev-east"
  location               = "East US"
  storage_account_name   = "iacdatastorage01"
  account_tier           = "Standard"
  replication_type       = "LRS"
  container_name         = "data01-new"
  container_access_type  = "private"
  blob_name              = "data01.vhd"
  blob_size_mb           = 512
}

module "data02" {
  source                 = "../../modules/blob_storage"
  resource_group_name    = "rg-iac-dev-east"
  location               = "East US"
  storage_account_name   = "iacdevstorage01"
  account_tier           = "Standard"
  replication_type       = "LRS"
  container_name         = "data02-new"
  container_access_type  = "private"
  blob_name              = "data02.vhd"
  blob_size_mb           = 512
}
