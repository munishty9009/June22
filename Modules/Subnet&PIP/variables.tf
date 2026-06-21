variable "subnet_name"         
{ type = string }

variable "resource_group_name" 
{ type = string }

variable "vnet_name"           
{ type = string }

variable "address_prefixes"    
{ type = list(string) }

variable "location"           
{ type = string }

variable "public_ip_name"      
{ type = string }

variable "allocation_method"   
{ type = string; default = "Static" }

variable "public_ip_sku"       
{ type = string; default = "Standard" }
