location             = "Central India"
resource_group_name  = "terraform-dev-rg"
storage_account_name = "tfdevmanzoor001"
vnet_name            = "dev-vnet"
subnet_name          = "dev-subnet"
nsg_name             = "dev-nsg"
vm_name              = "dev-linux-vm"

address_space   = ["10.0.0.0/16"]
subnet_prefixes = ["10.0.1.0/24"]

admin_username = "azureuser"
admin_password = "TuesdayGreen01!"