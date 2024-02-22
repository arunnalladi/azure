variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
  default     = "corp-network"
}

variable "location" {
  description = "(Optional) The location in which the resources will be created."
  type        = string
  default     = "East US 2"
}

variable "virtual_network_name" {
description = "Name of virtual_network "
type        = string
default     = "corp-firewalvnet"
}

variable "subnet_name" {
  type = string
  default = "jumbbox-subnet"
}

variable "address_space" {
description = "VN address space"
type        = string
default     = "10.0.0.0/22"
}
 
variable "subnet_cidr" {
description = "CIDR for jumbox sunbet"
type        = string
default     = "10.0.1.0/24"
}

variable "azurerm_virtual_network" {
  default = "azure-network"
  type = string
}