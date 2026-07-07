location             = "Central India"
resource_group_name  = "terraform-test-rg"
storage_account_name = "tftestmanzoor001"
vnet_name            = "test-vnet"
subnet_name          = "test-subnet"
nsg_name             = "test-nsg"
vm_name              = "test-linux-vm"

address_space   = ["10.0.0.0/16"]
subnet_prefixes = ["10.0.2.0/24"]

admin_username = "azureuser"
admin_password = "TuesdayGreen01!"