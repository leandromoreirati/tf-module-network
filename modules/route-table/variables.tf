/* GENERAL */
variable tags {
  type        = map(string)
  default     = {}
  description = "Setting tags for the feature" 
}

/* ROUTE TABLE */
variable vpc_id {
  type        = string
  default     = ""
  description = "The VPC ID."
}

variable route {
  type        = list
  default     = []
  description = "Enable or disable lifecycle rules dynamic block configuration for route table."
}

variable subnet_id {
  type        = list
  default     = []
  description = "Subne ID list."
}

variable availability_zone {
  type        = list
  default     = []
  description = "List of availability zone."
}