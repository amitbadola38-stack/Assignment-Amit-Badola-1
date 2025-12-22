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
    {name                = string
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
}) )
}))
}

