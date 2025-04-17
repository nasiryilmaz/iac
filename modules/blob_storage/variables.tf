variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "The replication type for the storage account"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the blob container"
  type        = string
}

variable "container_access_type" {
  description = "Access level for the blob container"
  type        = string
  default     = "private"
}

variable "blob_name" {
  description = "The name of the blob to create"
  type        = string
}

variable "blob_size_mb" {
  description = "The size of the page blob in megabytes"
  type        = number
  default     = 512
}
