provider "aws" {
  region = var.region
  version = "~> 2.0"
}


module private_subnet {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/subnet"

  name                     = "subnet"

  vpc_id                   = module.vpc.vpc_id
  cidr_block               = module.vpc.vpc_cidr_block
  az_count                 = var.az_count
  map_public_ip_on_launch  = var.map_public_ip_on_launch

  tags = {
    Name        = "subnet"
    terraform   = true
  }
}
