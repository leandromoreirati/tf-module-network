/* For more details on the configuration, visit the official documentation:
    https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
*/

resource "aws_internet_gateway" "default" {
  vpc_id = var.vpc_id

  tags = var.tags

}