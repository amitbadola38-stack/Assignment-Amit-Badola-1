rgaccount1 = {
  rg1 = {
    name     = "rgaccount1001"
    location = "westus"
} }


amitstaccount1 = {

  storage_account1 = {
    name                     = "retstorage1"
    resource_group_name      = "rgaccount1001"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "GRS"

} }

vntrethome1 = {
  vntrahhome1001 = {
    name                = "vntrahhome1"
    location            = "westus"
    resource_group_name = "rgaccount1001"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]

} }

subnet = {
  subnet1 = {
    name                 = "subnethomenet1"
    resource_group_name  = "rgaccount1001"
    virtual_network_name = "vntrahhome1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

nichomecard1 = {
  nichomecard1001 = {
    name                = "niccard1"
    location            = "westus"
    resource_group_name = "rgaccount1001"

    ip_configuration = {
      name                          = "internal"
      private_ip_address_allocation = "Dynamic"
    }
} }

resource_group_name  = "rgaccount1001"
virtual_network_name = "vntrahhome1"
subnet_name          = "subnethomenet1"

piphome1 = {
  pip = {
    name                = "piphome1001"
    resource_group_name = "rgaccount1001"
    location            = "westus"
    allocation_method   = "Static"
} }

nsghome1 = {
  nsghome1001 = {
    name                = "nsghome1001"
    location            = "westus"
    resource_group_name = "rgaccount1001"

    security_rule = [{
      name                       = "rule1"
      priority                   = "100"
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
}] }
} 