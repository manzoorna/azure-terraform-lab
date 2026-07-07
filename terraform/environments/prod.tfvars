location             = "Central India"
resource_group_name  = "terraform-prod-rg"
storage_account_name = "tfprodmanzoor001"
vnet_name            = "prod-vnet"
subnet_name          = "prod-subnet"
nsg_name             = "prod-nsg"
vm_name              = "prod-linux-vm"

address_space   = ["10.0.0.0/16"]
subnet_prefixes = ["10.0.3.0/24"]

admin_username = "azureuser"
admin_password = "TuesdayGreen01!"