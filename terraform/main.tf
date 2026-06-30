module "resource_group" {
  source   = "../modules/resource-group"
  name     = "terraform-lab-rg"
  location = "Central India"
}

module "storage_account" {
  source = "../modules/storage-account"

  storage_account_name = "tflabmanzoor001"
  resource_group_name  = module.resource_group.resource_group_name
  location             = "Central India"
}

module "virtual_network" {
  source = "../modules/virtual-network"

  vnet_name           = "lab-vnet"
  location            = "Central India"
  resource_group_name = module.resource_group.resource_group_name

  address_space   = ["10.0.0.0/16"]
  subnet_name     = "default"
  subnet_prefixes = ["10.0.1.0/24"]
}

module "network_security_group" {
  source = "../modules/network-security-group"

  nsg_name            = "lab-nsg"
  location            = "Central India"
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.virtual_network.subnet_id
}