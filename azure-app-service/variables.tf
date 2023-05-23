variable "resource_name" {
  type = string
  default = "azure-app-service-resource"
}
variable "location" {
  type    = string
  default = "West Europe"
}
variable "azure_plan_tier" {
  type    = string
  default = "Standard"
}
variable "azure_plan_size" {
  type    = string
  default = "S1"
}
variable "max_min_int_value" {
  type = list(number)
  default = [1, 1000]
}
variable "azurerm_app_service_name" {
  type = string
  default = "test-azure-app"
}
variable "azure_app_service_plan_name" {
  type = string
  default = "plan-to-do-app"
}

