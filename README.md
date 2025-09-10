# Windows VM Modul aufrufen
module "my_windows_vm" {
  source              = "./modules/azure_vm"
  vm_name             = "demo-windows-vm"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location (optional)
  vm_size             = "Standard_B2ms" (optional)
  admin_username      = "adminuser"
  admin_password      = "SuperSecurePassword123!"
  subnet_id           = data.azurerm_subnet.subnet.id
  enable_public_ip    = true (optional)
}
