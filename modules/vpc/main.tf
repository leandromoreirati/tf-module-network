/* For more details on the configuration, visit the official documentation:
https://www.terraform.io/docs/providers/aws/r/vpc.html */

/* VPC */
resource "aws_vpc" "default" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_support               = var.enable_dns_support
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      tags,
    ]
  }

  tags = var.tags
}

/* DHCP */
resource "aws_vpc_dhcp_options" "dhcp" {
  domain_name_servers = [ "AmazonProvidedDNS" ]
  domain_name         = var.domain_name
  ntp_servers         = var.ntp_servers

  tags = var.tags
}

resource "aws_vpc_dhcp_options_association" "dhcp_options_association" {
  vpc_id          = aws_vpc.default.id
  dhcp_options_id = aws_vpc_dhcp_options.dhcp.id
}

/* VPC FLOW LOGS */
resource "aws_flow_log" "vpc_flow_log" {
  count = var.enable_flow_log == true ? 1 : 0
  log_destination      = var.log_destination
  log_destination_type = var.log_destination_type
  traffic_type         = var.traffic_type
  vpc_id               = element(aws_vpc.default.*.id, count.index)

  tags = var.tags
}

variable log_destination {
  type = string
  default = ""
  description = "ARN of bucket the logging destination."
}

variable log_destination_type {
  type = string
  default = "s3"
  description = "The type of the logging destination. Valid values: cloud-watch-logs, s3."
}