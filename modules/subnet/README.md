# tf-module-subnet 
This module sets up subnets in an AWS VPC.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone | Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `list` | `[]` | no |
| cidr\_block | The CIDR block for the subnet. | `string` | `""` | no |
| cidr\_block\_index | Network prefix give must be given in CIDR notation, as defined in RFC 4632 section 3.1. | `string` | `""` | no |
| custom\_name | Name fo subnet to merge in tags. | `string` | `""` | no |
| environment | Environment of the application. | `string` | `""` | no |
| internet\_gateway | List internet gateway. | `string` | `""` | no |
| map\_public\_ip\_on\_launch | Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `bool` | `false` | no |
| newbits | The number of additional bits with which to extend the prefix. | `number` | `"8"` | no |
| tags | Setting tags for the feature | `map(string)` | `{}` | no |
| vpc\_id | The VPC ID. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | ARN of the subnet. |
| assign\_ipv6\_address\_on\_creation | Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. || cidr\_block | CIDR block for the subnet.. |
| id | ID of the subnet. |
| ipv6\_cidr\_block | Pv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length. |
| map\_public\_ip\_on\_launch | Specify true to indicate that instances launched into the subnet should be assigned a public IP address. |