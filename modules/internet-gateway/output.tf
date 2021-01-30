output "id" {
  value = aws_internet_gateway.default.id
  description = "ID of the Internet Gateway."
}

output "arn" {
  value = aws_internet_gateway.default.arn
  description = "ARN of the Internet Gateway."
}

output "owner_id" {
  value = aws_internet_gateway.default.owner_id
  description = "ID of the AWS account that owns the internet gateway."
}