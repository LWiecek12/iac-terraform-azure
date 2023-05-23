variable "location" {
  type    = string
  default = "West Europe"
}
variable "resource_name" {
  type = string
  default = "azure-blob-storage-resource"
}
variable "storage_account_name" {
  type = string
  default = "storagecontainertesting2"
}
variable "azure_plan_tier" {
  type    = string
  default = "Standard"
}
variable "account_replication_type" {
  type = string
  default = "LRS"
}
variable "azurerm_storage_container_name" {
  type = string
  default = "azuretestcontainer"
}
variable "container_access_type" {
  type = string
  default = "private"
}
variable "azurerm_storage_blob_name" {
  type = string
  default = "teststorageblobname"
}
variable "azurerm_storage_blob_type" {
  type = string
  default = "Block"
}
variable "content" {
  type = string
  default = "some content"
}
