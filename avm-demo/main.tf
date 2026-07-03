module "storage_account_avm" {

  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "0.7.3"

  name      = var.storage_account_name
  location  = var.location

  parent_id = "/subscriptions/8cbb5851-c630-46f0-9e70-e80830e16792/resourceGroups/${var.resource_group_name}"

  account_tier             = "Standard"
  account_replication_type = "LRS"

    enable_telemetry = false
}