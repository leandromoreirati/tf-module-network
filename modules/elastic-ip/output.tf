output "id" { 
  value       = aws_eip.default.*.id
  description = "EIP allocation ID."
}

output "public_ip" { 
  value       = aws_eip.default.*.public_ip
  description = "Public IP address."
}

output "public_dns" { 
  value       = aws_eip.default.*.public_dns
  description = "Public IP address."
}

output "private_ip" { 
  value       = aws_eip.default.*.private_ip
  description = "Private IP address (if in VPC)."
}

output "private_dns" { 
  value       = aws_eip.default.*.private_dns 
  description = "Private IP address (if in VPC)."
}