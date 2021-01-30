/* For more details on the configuration, visit the official documentation:
  https://www.terraform.io/docs/providers/aws/r/route53_record.html
*/

resource "aws_route53_record" "default" {
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  health_check_id                  = var.health_check_id
  allow_overwrite                  = var.allow_overwrite

  set_identifier                   = var.set_identifier
  records                          = var.records

  dynamic "weighted_routing_policy" {
    for_each = var.weighted_routing_policy
    content {
      weight         = lookup(weighted_routing_policy.value, "weight", null)
    }
  }

  dynamic "alias" {
    for_each = var.alias
    content {
      name                   = lookup(alias.value, "name", null)
      zone_id                = lookup(alias.value, "zone_id", null)
      evaluate_target_health = lookup(alias.value, "evaluate_target_health", null)
    }
  }
}