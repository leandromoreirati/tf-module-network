/* GENERAL */
variable environment {
  type    = string
  default = ""
  description = "Environment of the application."
}

variable tags {
  type    = map(string)
  default = {}
  description = "Setting tags for the feature" 
}

/* SUBNET */
variable "cidr_block_index" {
  type        = string
  default     = ""
  description = "Network prefix give must be given in CIDR notation, as defined in RFC 4632 section 3.1."
}

variable "newbits" {
  type        = number
  default     = "8"
  description = "The number of additional bits with which to extend the prefix."
}

variable vpc_id {
  type    = string
  default = ""
  description = "The VPC ID."
}

variable cidr_block {
  default = ""
  description = "The CIDR block for the subnet."
}

variable map_public_ip_on_launch {
  type    = bool
  default = false
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable availability_zone {
  type    = list
  default = []
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable custom_name {
  type = string
  default = ""
  description = "Name fo subnet to merge in tags."
}

variable internet_gateway {
  type = string
  default = ""
  description = "List internet gateway."
}