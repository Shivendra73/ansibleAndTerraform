module "rg" {
  source                 = "./module_rg"
  resouce_group_name     = var.resouce_group_name
  resouce_group_location = var.resouce_group_location

}