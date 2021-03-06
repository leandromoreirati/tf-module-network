# tf-module-route-table
A route table contains a set of rules, called routes, which are used to determine where network traffic from your subnet or gateway is directed, this module allows us to configure route tables.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone | List of availability zone. | `list` | `[]` | no |
| route | Enable or disable lifecycle rules dynamic block configuration for route table. | `list` | `[]` | no |
| subnet\_id | Subne ID list. | `list` | `[]` | no |
| tags | Setting tags for the feature | `map(string)` | `{}` | no |
| vpc\_id | The VPC ID. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| gateway\_id | gateway ID to create an association. Conflicts with subnet\_id. |
| id | ID of the routing table. |
| owner\_id | ID of the AWS account that owns the route table. |
| route\_table\_id | ID of the routing table to associate with. |
| subnet\_id | subnet ID to create an association. Conflicts with gateway\_id. |

