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

module "elastic_ip" {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/elastic-ip"

  tags = {
    Name            = "eip"
    terraform       = true
  }
}