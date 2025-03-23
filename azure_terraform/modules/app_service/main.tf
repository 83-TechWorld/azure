resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = true
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    JAVA_OPTS                           = "-Dserver.port=8080"
  }
}
