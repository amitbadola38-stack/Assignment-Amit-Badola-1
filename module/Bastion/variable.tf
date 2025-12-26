variable "bastionblockhome" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

    ip_configuration = list(object({
      name = string

    }))
  }))
}

variable "resource_group_name" {}
variable "pipname" {}
variable "virtual_network" {}
variable "subnet_bastion" {}
