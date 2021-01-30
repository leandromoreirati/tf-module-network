variable tags {
  type    = map(string)
  default = {}
  description = "Setting tags for the feature" 
}

variable cidr_block {
  type = string
  default = ""
  description = "The CIDR block for the VPC"
}

variable instance_tenancy {
  type = string
  default = "default"
  description = "A tenancy option for instances launched into the VPC, can be: default, host or dedicated, for more information: https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/dedicated-instance.html"
}

variable enable_dns_support {
  
  default = true
  description = "A boolean flag to enable/disable DNS support in the VPC."
}

variable enable_dns_hostnames {
  type = bool
  default = false
  description = "A boolean flag to enable/disable DNS hostnames in the VPC."
}

variable enable_classiclink_dns_support {
  type = bool
  default = false
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC."
}

variable enable_flow_log {
  type        = bool
  default     = false
  description = "Enable or disable VPC Flow logs."
}

variable "ntp_servers" {
  type        = list
  default     = []
  description = "List of NTP servers to configure."
}

variable "domain_name" {
  type        = string
  default     = ""
  description = "Suffix domain name to use by default when resolving non Fully Qualified Domain Names."
}

variable "assign_generated_ipv6_cidr_block" {
  type        = bool
  default     = false
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC."
}

variable traffic_type {
  type = string
  default = "ALL"
  description = "Type of traffic to capture. Valid values: ACCEPT,REJECT, ALL."
}

