output "storage_account_name" {
  description = "The name of the Azure storage account"
  value       = azurerm_storage_account.storage_account.name
}

output "storage_container_name" {
  description = "The name of the blob container"
  value       = azurerm_storage_container.storage_container.name
}

output "primary_blob_endpoint" {
  description = "Primary endpoint for the blob storage"
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}
