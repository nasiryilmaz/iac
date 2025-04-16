variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy resources in"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique name for the Azure storage account"
  type        = string
}

variable "account_tier" {
  description = "Storage account performance tier (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Storage replication type (e.g., LRS, GRS, ZRS)"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "Name of the storage blob container"
  type        = string
}

variable "container_access_type" {
  description = "Access level for the blob container (private, blob, container)"
  type        = string
  default     = "private"
}
