# ─── Resource Group & Location ───────────────────────────────────────────────

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

# ─── Virtual Network ──────────────────────────────────────────────────────────

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space for the Virtual Network (CIDR blocks)"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# ─── Subnet ───────────────────────────────────────────────────────────────────

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "Address prefixes for the Subnet (CIDR blocks)"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# ─── Public IP ────────────────────────────────────────────────────────────────

variable "public_ip_name" {
  description = "Name of the Public IP resource"
  type        = string
}

variable "allocation_method" {
  description = "Public IP allocation method — Static or Dynamic"
  type        = string
  default     = "Static"

  validation {
    condition     = contains(["Static", "Dynamic"], var.allocation_method)
    error_message = "allocation_method must be 'Static' or 'Dynamic'."
  }
}

variable "public_ip_sku" {
  description = "SKU for the Public IP — Basic or Standard"
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Basic", "Standard"], var.public_ip_sku)
    error_message = "public_ip_sku must be 'Basic' or 'Standard'."
  }
}

# ─── Virtual Machine ──────────────────────────────────────────────────────────

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size/SKU"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key for VM authentication"
  type        = string
  sensitive   = true
}

# ─── VM OS Image ──────────────────────────────────────────────────────────────

variable "image_publisher" {
  description = "Publisher of the VM OS image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Offer of the VM OS image"
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "SKU of the VM OS image"
  type        = string
  default     = "22_04-lts"
}

variable "image_version" {
  description = "Version of the VM OS image"
  type        = string
  default     = "latest"
}
