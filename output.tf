# ─── Resource Group ───────────────────────────────────────────────────────────

output "resource_group_name" {
  description = "Name of the deployed Resource Group"
  value       = module.vnet.resource_group_name
}

output "location" {
  description = "Azure region where resources are deployed"
  value       = module.vnet.location
}

# ─── Virtual Network ──────────────────────────────────────────────────────────

output "vnet_id" {
  description = "Resource ID of the Virtual Network"
  value       = module.vnet.vnet_id
}

# ─── Subnet ───────────────────────────────────────────────────────────────────

output "subnet_id" {
  description = "Resource ID of the Subnet"
  value       = module.subnet.subnet_id
}

output "public_ip_id" {
  description = "Resource ID of the Public IP"
  value       = module.subnet.public_ip_id
}

# ─── Virtual Machine ──────────────────────────────────────────────────────────

output "vm_id" {
  description = "Resource ID of the Virtual Machine"
  value       = module.VM.vm_id
}

output "vm_private_ip" {
  description = "Private IP address of the VM NIC"
  value       = module.VM.private_ip
}
