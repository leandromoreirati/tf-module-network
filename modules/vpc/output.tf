/* VPC */
output "vpc_id" {
  value = aws_vpc.default.id
  description = "ID of the VPC."
}

output "vpc_arn" {
  value = aws_vpc.default.arn
  description = "ARN of VPC."
}

output "vpc_cidr_block" {
  value = aws_vpc.default.cidr_block
  description = "CIDR block of the VPC."
}

/* DHCP */
output "dhcp_options_id" {
  value = aws_vpc_dhcp_options.dhcp.id
  description = "ID of the DHCP Options Set."
}

output "dhcp_options_arn" {
  value = aws_vpc_dhcp_options.dhcp.arn
  description = "ARN of the DHCP Options Set."
}
 
output "dhcp_options_owner_id" {
  value = aws_vpc_dhcp_options.dhcp.owner_id
  description = "ID of the AWS account that owns the DHCP options set."
}

/* DHCP ASSOCIATION */
output "dhcp_options_association_vpc_id" {
  value = aws_vpc_dhcp_options_association.dhcp_options_association.vpc_id
  description = "ID of the VPC to which we would like to associate a DHCP Options Set."
}

output "dhcp_options_association_dhcp_options_id" {
  value = aws_vpc_dhcp_options_association.dhcp_options_association.dhcp_options_id
  description = "ID of the DHCP Options Set to associate to the VPC."
}

/* VPC FLOW LOGS */
output vpc_flow_log_id {
  value = aws_flow_log.vpc_flow_log[*].id
  description = "Flow Log ID"
}

output vpc_flow_log_arn {
  value = aws_flow_log.vpc_flow_log[*].arn
  description = "ARN of the Flow Log."
}