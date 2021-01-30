provider "aws" {
  region = var.region
  version = "~> 2.0"
}

module "internet_gateway" {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/internet-gateway"

  vpc_id = module.vpc.vpc_id

  tags = {
    Name        = "igw"
    terrafom    = true
  }

}