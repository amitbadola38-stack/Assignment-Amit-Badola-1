data "azurerm_public_ip" "pipdatablock1" {
  name                = var.pipname2
  resource_group_name = var.resource_group_name
}

resource "azurerm_lb" "example" {
  for_each = var.loadbalancer1001
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  
  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = data.azurerm_public_ip.pipdatablock1.id
  }
}
