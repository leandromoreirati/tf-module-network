provider "aws" {
  region  = var.region
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
    Name = "vpc"
    terraform = true
  }

}

module private_subnet {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/subnet"

  name                     = "subnet"

  vpc_id                   = module.vpc.vpc_id
  cidr_block               = module.vpc.vpc_cidr_block
  az_count                 = var.az_count
  map_public_ip_on_launch  = var.map_public_ip_on_launch

  tags = {
    Name = "subnet"
    terraform = true
  }

}

module internet_gateway {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/internet-gateway"

  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "igw"
    terraform = true
  }
=
}

module route_table {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/route-table"
  
  az_count = var.az_count
  vpc_id   = module.vpc.vpc_id
  private_subnet_id = module.private_subnet.private_subnet_id

  route_rules =[
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = module.internet_gateway.internet_gateway_id
    },
  ]

  tags = {
    Name        = "rt"
    terraform   = true
  }

}