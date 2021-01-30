variable zone_id {
  type        = string
  default     = ""
  description = "Id Hosted zone." 
}

variable name {
  type      = string
  default     = ""
  description = "The name of the record."
}

variable type {
  type        = string
  default     = ""
  description = "The record type. Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT."
}

variable ttl {
  type        = number
  default     = "60"
  description = "The TTL of the record."
}

variable set_identifier {
  type        = string
  default     = ""
  description = "Unique identifier to differentiate records with routing policies from one another."
}

variable health_check_id {
  type        = string 
  default     = ""
  description = "Health check the record should be associated with."
}

variable allow_overwrite {
  type        = bool
  default     = false
  description = "llow creation of this record in Terraform to overwrite an existing record, if any."
}

variable records {
  type        = list
  default     = []
  description = "A string list of records."
}

variable weighted_routing_policy {
  type        = any
  default     = []
  description = "Block indicating a weighted routing policy. Conflicts with any other routing policy."
}

variable alias {
  type        = any
  default     = []
  description = "An alias block. Conflicts with ttl & records."
}

variable "evaluate_target_health" {
  type        = bool
  default     = "true"
  description = "Set up Route 53 whether to respond to DNS queries using this resource record set by checking the health of the resource record set."
}