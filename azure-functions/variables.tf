variable "location" {
  type    = string
  default = "West Europe"
}
variable "resource_group_name" {
  type    = string
  default = "azure-functions-resource"
}
variable "azurerm_storage_account_name" {
  type = string
  default = "storagecontainertesting"
}
variable "azure_plan_tier" {
  type    = string
  default = "Standard"
}
variable "account_replication_type" {
  type = string
  default = "LRS"
}
variable "azurerm_app_service_plan_name" {
  type = string
  default = "demoappserviceplan"
}
variable "azure_plan_size" {
  type    = string
  default = "S1"
}
variable "azurerm_linux_function_app_name" {
  type = string
  default = "examplelinuxfunctionapp"
}
variable "azurerm_function_app_function_name" {
  type = string
  default = "testazurefunctions"
}
variable "config_json" {
  type = any
  default = {
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods"   = [
          "get",
          "post",
        ]
        "name" = "req"
        "type" = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      },
    ]
  }
}

