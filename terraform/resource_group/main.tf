
resource "azurerm_resource_group" "corp_network"{
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "corp_firewalvnet" {
  name                = var.azurerm_virtual_network
  location            = azurerm_resource_group.corp_network.location
  resource_group_name = azurerm_resource_group.corp_network.name
  address_space       = [var.address_space]  
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.corp_network.name
  virtual_network_name = azurerm_virtual_network.corp_firewalvnet.name
  address_prefixes     = [var.subnet_cidr]
  depends_on = [
    azurerm_virtual_network.corp_firewalvnet
  ]
}
