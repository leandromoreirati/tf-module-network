﻿# Elastic IP Example
This directory sets up a [Elastic IP](https://amzn.to/32hLitV).

## Providers

No provider.

# Usage

```bash
$ terraform init
$ terraform plan 
$ terraform apply
```

Run `terraform destroy` when you want to remove this feature.

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| data | Private subnet IDs. |
| elastic\_ip\_id | EIP allocation ID. |
| elastic\_ip\_private\_ip | Private IP address (if in VPC). |
| elastic\_ip\_public\_ip | Public IP address. |

