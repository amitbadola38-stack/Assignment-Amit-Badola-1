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

module "nic_card" {
  source               = "../../module/nic_card"
  nichomecard1         = var.nichomecard1
  depends_on           = [module.subnet]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnet_name          = var.subnet_name
}
module "pip" {
  source     = "../../module/pip"
  depends_on = [module.resorcegroup]
  piphome1   = var.piphome1
}

module "nsg" {
  source     = "../../module/nsg"
  nsghome1   = var.nsghome1
  depends_on = [module.resorcegroup]

}