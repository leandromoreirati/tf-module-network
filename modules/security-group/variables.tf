variable name {
  type        = string
  default     = ""
  description = "Security Group Name."
}

variable tags {
  type        = map
  default     = {}
  description = "Setting tags for the resource."
}

variable vpc_id {
  type        = string
  default     = ""
  description = "VPC ID in which to create the Security Group"
}

variable description {
  type        = string
  default     = ""
  description = "Description of this Security Group"
}

variable from_port {
  type        = list
  default     = []
  description = "List port ingress rules"
}

variable revoke_rules_on_delete {
  type        = bool
  default     = false
  description = " Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself."
}

variable ingress {
  type        = any
  default     = []
  description = "list of ingress configuration."
}

variable egress {
  type        = any
  default     = []
  description = "list of egress configuration."
}