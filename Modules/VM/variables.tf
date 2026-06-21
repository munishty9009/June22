
variable "vm_name"             { type = string }
variable "resource_group_name" { type = string }
variable "location"            { type = string }
variable "subnet_id"           { type = string }
variable "public_ip_id"        { type = string }
variable "vm_size"             { type = string; default = "Standard_B2s" }
variable "admin_username"      { type = string }
variable "ssh_public_key"      { type = string }
variable "image_publisher"     { type = string; default = "Canonical" }
variable "image_offer"         { type = string; default = "0001-com-ubuntu-server-jammy" }
variable "image_sku"           { type = string; default = "22_04-lts" }
variable "image_version"       { type = string; default = "latest" }
