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