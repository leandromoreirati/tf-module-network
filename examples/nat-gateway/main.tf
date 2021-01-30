provider "aws" {
  region  = var.region
  version = "~> 2.0"
}

data "aws_vpc" "default" {
  state = "available"

  filter {
    name = "tag:Name"
    values = ["lms-bucket-infraestrutura-staging"]
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.default.id
}

module elastic_ip {
  source = "../../modules/vpc"

  tags = {
    Name            = "eip"
    terraform       = true
  }
}

module nat_gateway {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/nat-gateway"

  subnet_count = length(data.aws_subnet_ids.private.ids)

  allocation_id     = module.elastic_ip.elastic_ip_id
  private_subnet_id = data.aws_subnet_ids.private.ids[*]

  tags = {
     Name            = "natgw"
     terraform       = true
  }
}