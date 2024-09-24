output "resource_group_name" {
  value = data.azurerm_resource_group.example.name

}

output "resource_group_location_name" {
  value = data.azurerm_resource_group.example.location

}

output "resource_group_vnet_name" {
  value = azurerm_virtual_network.main.address_space

}