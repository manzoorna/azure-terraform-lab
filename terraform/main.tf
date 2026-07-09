module "resource_group" {
  source   = "../modules/resource-group"
  name     = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source = "../modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = var.location
}

module "virtual_network" {
  source = "../modules/virtual-network"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name

  address_space   = var.address_space
  subnet_name     = var.subnet_name
  subnet_prefixes = var.subnet_prefixes
}

module "network_security_group" {
  source = "../modules/network-security-group"

  nsg_name            = var.nsg_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.virtual_network.subnet_id
}

module "linux_vm" {
  source = "../modules/linux-vm"

  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.virtual_network.subnet_id

  admin_username = var.admin_username
  admin_password = var.admin_password
}

module "key_vault" {
  source = "../modules/key-vault"

  key_vault_name      = var.key_vault_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
}