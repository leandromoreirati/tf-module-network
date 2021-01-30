/* ROUTE53 */
output zone_id {
  value = aws_route53_zone.default.zone_id
  description = "Hosted Zone ID. This can be referenced by zone records."
}

output name_servers {
  value = aws_route53_zone.default.name_servers
  description = "A list of name servers in associated (or default) delegation set"
}