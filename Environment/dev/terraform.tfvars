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

  subnet2 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rgaccount1001"
    virtual_network_name = "vntrahhome1"
    address_prefixes     = ["10.0.10.0/24"]
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
subnet_bastion       = "AzureBastionSubnet"

piphome1 = {
  pip = {
    name                = "piphome1001"
    resource_group_name = "rgaccount1001"
    location            = "westus"
    allocation_method   = "Static"
  }
    pip2 = {
    name                = "piphome1002"
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


amitvm1001 = {
  vm1001 = {
    name                = "amitvm1001"
    location            = "westus"
    resource_group_name = "rgaccount1001"
    vm_size             = "Standard_B1s"
} }

nic_name = "niccard1"

keyvault = {
  keyvault1001 = {
    name                        = "amitkeyvaultadin"
    location                    = "westus"
    resource_group_name         = "rgaccount1001"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false

    sku_name = "standard"

} }


bastionblockhome = {
  bastion1 = {
    name                = "bastionhome1"
    location            = "westus"
    resource_group_name = "rgaccount1001"

    ip_configuration = [{
      name = "configuration"
    }]
  }
}
pipname         = "piphome1001"
virtual_network = "vntrahhome1"

sqlblock = {
sqldata = {

  name                         = "sqldatablock123"
  resource_group_name          = "rgaccount1001"
  location                     = "westus"
  version                      = "12.0"
  administrator_login          = "adminuser99"
  administrator_login_password = "adminuser@123"
  minimum_tls_version          = "1.2"

  azuread_administrator = [{
    login_username = "AzureAD Admin"
  }]

  }
}

loadbalancer1001 = {
  loadbalancer1 = {
  name                = "lb_block"
  location            = "westus"
  resource_group_name = "rgaccount1001"

  }
}
pipname2 = "piphome1002"

