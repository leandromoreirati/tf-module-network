provider "aws" {
  region = var.region
  version = "~> 2.0"
}

module record {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/route53-record"

  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl

  set_identifier = var.set_identifier
  records = ["10.0.0.1"]

  weighted_rules = [
    {
      weight = 10
    }
  ]
}