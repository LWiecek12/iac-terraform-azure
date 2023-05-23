resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_storage_account" "example" {
  name                     = var.azurerm_storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.azure_plan_tier
  account_replication_type = var.account_replication_type
}
resource "azurerm_app_service_plan" "example" {
  name                = var.azurerm_app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = var.azure_plan_tier
    size = var.azure_plan_size
  }
}
resource "azurerm_linux_function_app" "example" {
  name                 = var.azurerm_linux_function_app_name
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.example.name
  service_plan_id      = azurerm_app_service_plan.example.id
  site_config {}
}
resource "azurerm_function_app_function" "example" {
  name            = var.azurerm_function_app_function_name
  function_app_id = azurerm_linux_function_app.example.id
  config_json     = jsonencode(var.config_json)
}