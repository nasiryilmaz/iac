variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "East US"
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "blob_size_mb" {
  type    = number
  default = 4096
}
