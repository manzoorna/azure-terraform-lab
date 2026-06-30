module "resource_group" {
  source   = "../modules/resource-group"
  name     = "terraform-lab-rg"
  location = "Central India"
}