output "resource_group_name" {
    value = azurerm_resource_group.example.name
}

output "vm_size" {
    value = azurerm_virtual_machine.main.vm_size
  
}