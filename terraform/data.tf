data "azurerm_client_config" "current" {}

data "azurerm_key_vault" "main" {
  name                = var.key_vault_name
  resource_group_name = module.resource_group.resource_group_name
}

data "azurerm_key_vault_secret" "vm_password" {
  name         = "VmAdminPassword"
  key_vault_id = data.azurerm_key_vault.main.id
}