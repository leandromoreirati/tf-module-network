variable "tags" {
  type        = map(string)
  default     = {}
  description = "Setting tags for the feature"
}

variable allocation_id {
  type        = string
  default     = ""
  description = "The Allocation ID of the Elastic IP address for the gateway."
}

variable subnet_id {
  type        = list
  default     = []
  description = "The Subnet ID of the subnet in which to place the gateway."
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