provider "aws" {
  region = var.region
  version = "~> 2.0"
}

module vpc {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/vpc"

  name                 = "vpc"
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  
  tags = {
    Name        = "vpc"
    terraform   = true
  }

}
