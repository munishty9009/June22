variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-windows-vm1990"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "SouthIndia"
}
variable "vnet_name" {                    # ✅ add this
  description = "Virtual network name"
  type        = string
}

variable "address_space" {               # ✅ add this
  description = "VNet address space"
  type        = list(string)
  default     = ["20.0.0.0/16"]
}
variable "vm_name" {
  description = "Name of the Windows virtual machine"
  type        = string
  default     = "vm-windows-01990"
}

variable "vm_size" {
  description = "Size/SKU of the virtual machine"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "admin_username" {
  description = "Local administrator username"
  type        = string
  default     = "azureadmin"
}

variable "admin_password" {
  description = "Local administrator password"
  type        = string
  sensitive   = true
}

variable "os_disk_size_gb" {
  description = "OS disk size in GB"
  type        = number
  default     = 128
}

variable "os_disk_type" {
  description = "OS disk storage account type"
  type        = string
  default     = "Premium_LRS"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["20.0.1.0/24"]
}

variable "environment" {
  description = "Environment tag (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Additional tags to apply to all resources"
  type        = map(string)
  default     = {}
}
variable "subnet_name" {                 # ✅ add this
  description = "Subnet name"
  type        = string
}

variable "subnet_prefixes" {             # ✅ add this
  description = "Subnet address prefixes"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {              # ✅ add this
  description = "Public IP name"
  type        = string
}
