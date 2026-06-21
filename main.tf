module "vnet" {
  source = "./Modules/VNET"

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
}

module "subnet" {
  source = "./Modules/SubnetM"

  # Pass outputs from the vnet module
  resource_group_name = module.VNET.resource_group_name
  location            = module.VNET.location
  vnet_name           = var.vnet_name

  subnet_name       = var.subnet_name
  address_prefixes  = var.subnet_prefixes
  public_ip_name    = var.public_ip_name
}

module "vm" {
  source = "./Modules/VM"

  # Pass outputs from vnet and subnet Modules
  resource_group_name = module.VNET.resource_group_name
  location            = module.VNET.location
  subnet_id           = module.SubnetM.subnet_id
  public_ip_id        = module.SubnetM.public_ip_id

  vm_name        = var.vm_name
  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key
}
