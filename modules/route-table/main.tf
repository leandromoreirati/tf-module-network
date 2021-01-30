/* For more details on the configuration, visit the official documentation::
    https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
*/

resource "aws_route_table" "default" {
  count      = length(var.availability_zone) > 0 ? length(var.availability_zone) : 0
  vpc_id     = var.vpc_id

  dynamic "route" {
    for_each = var.route
    content {
      cidr_block                = lookup(route.value, "cidr_block", null)
      ipv6_cidr_block           = lookup(route.value, "ipv6_cidr_block", null)
      egress_only_gateway_id    = lookup(route.value, "egress_only_gateway_id", null)
      gateway_id                = lookup(route.value, "gateway_id", null)
      instance_id               = lookup(route.value, "instance_id", null)
      nat_gateway_id            = lookup(route.value, "nat_gateway_id", null)
      network_interface_id      = lookup(route.value, "network_interface_id", null)
      transit_gateway_id        = lookup(route.value, "transit_gateway_id", null)
      vpc_peering_connection_id = lookup(route.value, "vpc_peering_connection_id", null)
    }
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [
      tags,
      propagating_vgws
    ]
  }

  tags = var.tags
}

resource "aws_route_table_association" "default" {
  count          = length(var.availability_zone) > 0 ? length(var.availability_zone) : 0
  subnet_id      = element(var.subnet_id, count.index)
  route_table_id = aws_route_table.default[count.index].id
}