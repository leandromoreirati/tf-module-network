/* For more details on the configuration, visit the official documentation::
    https://www.terraform.io/docs/providers/aws/r/subnet.html
*/

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  custom_name = var.custom_name
}

resource "aws_subnet" "subnet" {
  count                   = length(var.availability_zone) > 0 ? length(var.availability_zone) : 0
  vpc_id                  = var.vpc_id
  cidr_block              = cidrsubnet(var.cidr_block, var.newbits, (count.index + var.cidr_block_index))
  availability_zone       = var.availability_zone[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      tags,
    ]
  }

  tags = merge(
    var.tags,
    {
      "Name" = "${local.custom_name}-${element(var.availability_zone, count.index)}-${var.environment}"
       availability_zones = element(var.availability_zone, count.index)
    },
  )
}