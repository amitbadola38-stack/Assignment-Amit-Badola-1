resource "azurerm_resource_group" "amitrg" {
    for_each = var.rgaccount1
  name     = each.value.name
  location = each.value.location
  }