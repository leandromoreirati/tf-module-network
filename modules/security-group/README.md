# tf-module-security-group
A security group acts as a virtual firewall for your instance to control inbound and outbound traffic.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Description of this Security Group | `string` | `""` | no |
| egress | list of egress configuration. | `any` | `[]` | no |
| from\_port | List port ingress rules | `list` | `[]` | no |
| ingress | list of ingress configuration. | `any` | `[]` | no |
| name | Security Group Name. | `string` | `""` | no |
| revoke\_rules\_on\_delete | Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. | `bool` | `false` | no |
| tags | Setting tags for the resource. | `map` | `{}` | no |
| vpc\_id | VPC ID in which to create the Security Group | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| security\_group\_arn | ARN of the security group. |
| security\_group\_id | ID of the security group. |
| security\_group\_name | Name of the security group. |

