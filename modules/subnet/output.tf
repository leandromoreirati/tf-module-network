/* SUBNET */
output "id" {
  value = aws_subnet.subnet.*.id
  description = "ID of the subnet."
}

output "arn" {
  value = aws_subnet.subnet.*.arn
  description = "ARN of the subnet."
}

output "cidr_block" {
  value = aws_subnet.subnet.*.cidr_block 
  description = "CIDR block for the subnet.."
}

output "ipv6_cidr_block" {
  value = aws_subnet.subnet.*.ipv6_cidr_block 
  description = "Pv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length."
}

output "map_public_ip_on_launch" {
  value = aws_subnet.subnet.*.map_public_ip_on_launch 
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

output "assign_ipv6_address_on_creation" {
  value = aws_subnet.subnet.*.assign_ipv6_address_on_creation 
  description = "Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address."
}