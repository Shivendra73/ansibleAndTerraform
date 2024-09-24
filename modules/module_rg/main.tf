resource "azurerm_resource_group" "module_rg" {
  name     =   var.resouce_group_name
  location = var.resouce_group_location
}