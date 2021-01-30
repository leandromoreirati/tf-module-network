/* For more details on the configuration, visit the official documentation:
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone
 */

resource "aws_route53_zone" "default" {
  name  = var.domain_name

  dynamic "vpc" {
    for_each = var.vpc_id
    content {
      vpc_id         = lookup(vpc.value, "vpc_id", null)
    }
  }

  tags = var.tags
}