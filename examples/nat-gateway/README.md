# NAT Gateway Example
This directory sets up a [NAT Gateway](https://amzn.to/2vSgHHr)

## Providers

No provider.

# Usage

```bash
$ terraform init
$ terraform plan 
$ terraform apply
```

Run `terraform destroy` when you want to remove this feature.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| nat\_gateway\_id | ID of the NAT Gateway. |
| nat\_gateway\_private\_ip | Private IP address of the NAT Gateway. |
| nat\_gateway\_public\_ip | Public IP address of the NAT Gateway. |

