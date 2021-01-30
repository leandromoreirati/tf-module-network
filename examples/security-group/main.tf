provider "aws" {
  region  = var.region
  version = "~> 2.0"
}

module security_group {
  source = "git::github.com/leandromoreirati/tf-module-network/modules/security-group"

  name = "application"

  description   = var.description
  vpc_id        = var.vpc_id

  ingress_rules = [
    {
      from_port  = 22
      to_port    = 22
      protocol   = "tcp"
      cidr_blocks = ["172.20.21.0/24"]
      security_groups = ["sg-04f207a5915da6e23"]
    },
    {
      from_port  = 80
      to_port    = 80
      protocol   = "udp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port  = 443
      to_port    = 443
      protocol   = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

  egress_rules = [
    {
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

  tags = {
     Name            = "application"
     terraform       = true 
  }
} 
