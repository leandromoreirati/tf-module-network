# tf-module-internet-gateway
An internet gateway is a horizontally scaled, redundant, and highly available VPC component that allows communication between instances in your VPC and the internet.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | Setting tags for the feature | `map(string)` | `{}` | no |
| vpc\_id | The VPC ID. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | ARN of the Internet Gateway. |
| id | ID of the Internet Gateway. |
| owner\_id | ID of the AWS account that owns the internet gateway. |