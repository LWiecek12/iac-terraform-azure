resource "azurerm_resource_group" "example" {
  name     = var.resource_name
  location = var.location
}
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.azure_plan_tier
  account_replication_type = var.account_replication_type
}
resource "azurerm_storage_container" "example" {
  name                  = var.azurerm_storage_container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}
resource "azurerm_storage_blob" "example" {
  name                   = var.azurerm_storage_blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.azurerm_storage_blob_type
  source_content = var.content
}