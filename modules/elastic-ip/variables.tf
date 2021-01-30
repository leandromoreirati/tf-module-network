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

variable availability_zone {
  type    = list
  default = []
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable instance {
  type    = string
  default = ""
  description = "EC2 instance ID."
}

variable associate_with_private_ip {
  type    = string
  default = ""
  description = "User specified primary or secondary private IP address to associate with the Elastic IP address."
}

variable custom_name {
  type = string
  default = ""
  description = "Name fo subnet to merge in tags."
}
