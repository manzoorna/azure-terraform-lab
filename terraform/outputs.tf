output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "storage_account_name" {
  value = module.storage_account.storage_account_name
}

output "vnet_name" {
  value = module.virtual_network.vnet_name
}

output "subnet_id" {
  value = module.virtual_network.subnet_id
}

output "nsg_name" {
  value = module.network_security_group.nsg_name
}

output "vm_name" {
  value = module.linux_vm.vm_name
}

output "vm_public_ip" {
  value = module.linux_vm.public_ip
}

output "key_vault_name" {
  description = "Azure Key Vault Name"
  value       = module.key_vault.key_vault_name
}

output "key_vault_id" {
  description = "Azure Key Vault ID"
  value       = module.key_vault.key_vault_id
}