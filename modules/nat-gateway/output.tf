output "id" {
  value = aws_nat_gateway.default.id
  description = "ID of the NAT Gateway."
}

output "allocation_id" {
  value = aws_nat_gateway.default.allocation_id
  description = "Allocation ID of the Elastic IP address for the gateway."
}

output "subnet_id" {
  value = aws_nat_gateway.default.subnet_id
  description = "Subnet ID of the subnet in which the NAT gateway is placed."
}

output "network_interface_id" {
  value = aws_nat_gateway.default.network_interface_id
  description = "ENI ID of the network interface created by the NAT gateway."
}

output "private_ip" {
  value = aws_nat_gateway.default.private_ip
  description = "Private IP address of the NAT Gateway."
}

output "public_ip" {
  value = aws_nat_gateway.default.public_ip
  description = "Public IP address of the NAT Gateway."
}
