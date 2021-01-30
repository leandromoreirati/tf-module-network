/* For more details on the configuration, visit the official documentation::
    https://www.terraform.io/docs/providers/aws/r/nat_gateway.html
*/

resource "aws_nat_gateway" "default" {
  count         = length(var.availability_zone) > 0 ? length(var.availability_zone) : 0

  allocation_id = element(var.allocation_id, count.index)
  subnet_id     = element(var.subnet_id, count.index)

  tags = var.tags
}