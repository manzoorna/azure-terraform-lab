variable "acr_name" {
  description = "Azure Container Registry Name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "sku" {
  description = "Azure Container Registry SKU"
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Resource Tags"

  type = map(string)

  default = {
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
}