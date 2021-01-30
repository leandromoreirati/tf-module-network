output "private_subnet_id" {
  value = module.private_subnet.private_subnet_id
  description = "ID of the subnet."
}

output "private_subnet_arn" {
  value = module.private_subnet.private_subnet_arn
  description = "ARN of the subnet."
}

output "public_subnet_cidr_block" {
  value       = module.private_subnet.cidr_block
  description = "List of Public CIDR blocks of the subnet."
}