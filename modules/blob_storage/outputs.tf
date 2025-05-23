output "resource_group_name" {
  value = azurerm_resource_group.storage_rg.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "storage_container_name" {
  value = azurerm_storage_container.storage_container.name
}

output "blob_name" {
  value = azurerm_storage_blob.blob.name
}
