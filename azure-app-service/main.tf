resource "azurerm_resource_group" "example" {
  name     = var.resource_name
  location = var.location
}
resource "random_integer" "example" {
  min = var.max_min_int_value[0]
  max = var.max_min_int_value[1]
}
resource "azurerm_app_service_plan" "example" {
  name                = var.azure_app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = var.azure_plan_tier
    size = var.azure_plan_size
  }
}
resource "azurerm_app_service" "example" {
  name                = "${var.azurerm_app_service_name}-${random_integer.example.result}"
  app_service_plan_id = azurerm_app_service_plan.example.id
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}