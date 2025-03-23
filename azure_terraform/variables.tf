variable "azure_subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

variable "resource_group_name" {
  default = "azure-resource-group"
}
variable "location" {
  default = "Australia Central"
}
variable "service_plan_name" {
  default = "azure-free-plan"
}
variable "app_service_name" {
  default = "azurecurd-service"
}
