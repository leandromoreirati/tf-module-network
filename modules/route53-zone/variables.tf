/* GENERAL */
variable tags {
  type    = map(string)
  default = {}
  description = "Setting tags for the feature" 
}

/* ROUTE53 ZONE */
variable vpc_id {
  type        = list
  default     = []
  description = "Id Hosted zone." 
}

variable domain_name {
  type        = string
  default     = ""
  description = "The name of the record."
}