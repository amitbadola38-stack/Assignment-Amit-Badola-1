data "azurerm_subnet" "data_block" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
  }

resource "azurerm_network_interface" "niccard" {
  for_each = var.nichomecard1
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.data_block.id
    private_ip_address_allocation = "Dynamic"
  }
}

