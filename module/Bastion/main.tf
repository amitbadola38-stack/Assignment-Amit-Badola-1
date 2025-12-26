# data "azurerm_subnet" "subnet_datablock" {
#   name                 = var.subnet_bastion
#   virtual_network_name = var.virtual_network
#   resource_group_name  = var.resource_group_name
# }

# data "azurerm_public_ip" "pip_block" {
#   name                = var.pipname
#   resource_group_name = var.resource_group_name
# }

# resource "azurerm_bastion_host" "bastion_block1" {
#   for_each            = var.bastionamitblock
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name

#   dynamic "ip_configuration" {
#     for_each = each.value.ip_configuration
#     content {

#       name                 = ip_configuration.value.name
#       subnet_id            = data.azurerm_subnet.subnet_datablock.id
#       public_ip_address_id = data.azurerm_public_ip.pip_block.id
#     }
#   }
# }
