output "vm_id" {
  description = "ID der virtuellen Maschine"
  value       = azurerm_windows_virtual_machine.vm.id
}

output "private_ip" {
  description = "Private IP der VM"
  value       = azurerm_network_interface.nic.private_ip_address
}

output "public_ip" {
  description = "Öffentliche IP der VM (falls erstellt)"
  value       = var.enable_public_ip ? azurerm_public_ip.public_ip[0].ip_address : null
}
