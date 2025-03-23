module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location           = var.location
}

module "service_plan" {
  source              = "./modules/service_plan"
  service_plan_name   = var.service_plan_name
  resource_group_name = module.resource_group.resource_group_name
  location           = module.resource_group.location
}

module "app_service" {
  source              = "./modules/app_service"
  app_service_name    = var.app_service_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  service_plan_id     = module.service_plan.service_plan_id
}