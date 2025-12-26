module "resorcegroup" {
  source     = "../../module/resorcegroup"
  rgaccount1 = var.rgaccount1
}

# module "strogegroup" {
#   source         = "../../module/strogegroup"
#   amitstaccount1 = var.amitstaccount1
#   depends_on     = [module.resorcegroup]
# }

module "virtual_network" {
  source      = "../../module/virtual_network"
  vntrethome1 = var.vntrethome1
  depends_on  = [module.resorcegroup]
}

module "subnet" {
  source     = "../../module/subnet"
  subnet     = var.subnet
  depends_on = [module.virtual_network]
}

# module "nic_card" {
#   source               = "../../module/nic_card"
#   nichomecard1         = var.nichomecard1
#   depends_on           = [module.subnet]
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = var.virtual_network_name
#   subnet_name          = var.subnet_name
# }
module "pip" {
  source     = "../../module/pip"
  depends_on = [module.resorcegroup]
  piphome1   = var.piphome1
}

# module "nsg" {
#   source     = "../../module/nsg"
#   nsghome1   = var.nsghome1
#   depends_on = [module.resorcegroup]

# }
# module "amitvm1001" {
#   source = "../../module/virtualMachine"
#   nic_name = var.nic_name
#   resource_group_name = var.resource_group_name
#   amitvm1001 = var.amitvm1001
# depends_on = [ module.nic_card ]
# }

# module "keyvault_module" {
#   source = "../../module/keyvaulte"
#   keyvault = var.keyvault
# depends_on = [ module.resorcegroup ] 
# }

module "bastion_module" {
  source = "../../module/Bastion"
  resource_group_name = var.resource_group_name
  subnet_bastion = var.subnet_bastion
  pipname = var.pipname
 virtual_network = var.virtual_network
 bastionblockhome = var.bastionblockhome
 depends_on = [ module.subnet,module.pip]

}
module "sql_moduule" {
  source = "../../module/SQL_server"
 sqlblock = var.sqlblock
 depends_on = [ module.bastion_module ]
}

module "load_balancer" {
  source = "../../module/load_balancer"
  depends_on = [ module.resorcegroup,module.pip ]
  loadbalancer1001 = var.loadbalancer1001
  pipname2 = var.pipname2
  resource_group_name = var.resource_group_name
}