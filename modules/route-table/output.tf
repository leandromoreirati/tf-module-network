/* ROUTE TABLE */
output "id" {
  value = aws_route_table.default.*.id
  description = "ID of the routing table."
}

output "owner_id" {
  value = aws_route_table.default.*.owner_id
  description = "ID of the AWS account that owns the route table."
}

/* ROUTE TABLE ASSOCIATION */
output "subnet_id" {
  value = aws_route_table_association.default.*.subnet_id
  description = " subnet ID to create an association. Conflicts with gateway_id."
}

output "gateway_id" {
  value = aws_route_table_association.default.*.gateway_id
  description = "gateway ID to create an association. Conflicts with subnet_id."
}

output "route_table_id" {
  value = aws_route_table_association.default.*.route_table_id
  description = " ID of the routing table to associate with."
}