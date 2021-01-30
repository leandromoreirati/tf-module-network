provider "aws" {
  region = var.region
  version = "~> 2.0"
}

module zone {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/route53-zone"

  domain_name = module.domain_label.id

  vpc_id = [
    {
      vpc_id = module.public.vpc_id
    }
  ]
}