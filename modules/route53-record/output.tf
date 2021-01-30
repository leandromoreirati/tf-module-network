/* ROUTE53 */
output "name" {
  value = aws_route53_record.default.name
  description = "Name of the record."
}

output "fqdn" {
  value = aws_route53_record.default.fqdn
  description = "FQDN built using the zone domain and name."
}