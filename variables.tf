variable "vm_name" {
  description = "Name der virtuellen Maschine"
  type        = string
}

variable "resource_group_name" {
  description = "Name der Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "westeurope"
}

variable "vm_size" {
  description = "Größe der VM"
  type        = string
  default     = "Standard_A1_v2"
}

variable "admin_username" {
  description = "Admin-Benutzername für die VM"
  type        = string
}

variable "admin_password" {
  description = "Admin-Passwort für die VM"
  type        = string
  sensitive   = true
}

variable "subnet_id" {
  description = "ID des bestehenden Subnets, in dem die VM erstellt wird"
  type        = string
}

variable "enable_public_ip" {
  description = "Ob eine Public IP erstellt werden soll"
  type        = bool
  default     = true
}

