variable "rgaccount1" {
  type = map(any)
}

variable "amitstaccount1" {
  type = map(any)
}

variable "vntrethome1" {
  type = map(any)
}

variable "subnet" {
  type = map(any)
}

variable "nichomecard1" {
  type = map(any)
}

variable "subnet_name" {}
variable "resource_group_name" {}
variable "virtual_network_name" {}

variable "piphome1" {
  type = map(any)
}

variable "nsghome1" {
  type = map(object(
    { name                = string
      location            = string
      resource_group_name = string

      security_rule = list(object({
        name                       = string
        priority                   = number
        direction                  = string
        access                     = string
        protocol                   = string
        source_port_range          = string
        destination_port_range     = string
        source_address_prefix      = string
        destination_address_prefix = string
      }))
  }))
}

variable "amitvm1001" {
  type = map(any)
}
variable "nic_name" {}

variable "keyvault" {
  type = map(any)
}
variable "bastionblockhome" {
  type = map(any)
}
variable "pipname" {}
variable "virtual_network" {}
variable "subnet_bastion" {}

variable "sqlblock" {
  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string

    azuread_administrator = list(object({
      login_username = string
    }))
  }))
}

variable "loadbalancer1001" {}
variable "pipname2" {}

