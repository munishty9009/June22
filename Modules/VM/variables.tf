
variable "vm_name"             { type = string }
variable "resource_group_name" { type = string }
variable "location"            { type = string }
variable "subnet_id"           { type = string }
variable "public_ip_id"        { type = string }
variable "vm_size"             { 
  type = string
  default = "Standard_B2s" 
  }
variable "admin_username"      { 
  type = string 
}

variable "image_publisher"     {
  type = string
  default = "MicrosoftWindowsServer" 
}
variable "image_offer"         {
  type = string 
  default = "WindowsServer" 
}
variable "image_sku"           {
  type = string  
  default = "2019-Datacenter" 
}
variable "image_version"       {
  type = string 
  default = "latest" 
}
