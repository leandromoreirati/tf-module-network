# tf-module-nat-gateway
You can use a network address translation (NAT) gateway to enable instances in a private subnet to connect to the internet or other AWS services, but prevent the internet from initiating a connection with those instances. 

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocation\_id | The Allocation ID of the Elastic IP address for the gateway. | `string` | `""` | no |
| availability\_zone | Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `list` | `[]` | no |
| custom\_name | Name fo subnet to merge in tags. | `string` | `""` | no |
| subnet\_id | The Subnet ID of the subnet in which to place the gateway. | `list` | `[]` | no |
| tags | Setting tags for the feature | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| allocation\_id | Allocation ID of the Elastic IP address for the gateway. |
| id | ID of the NAT Gateway. |
| network\_interface\_id | ENI ID of the network interface created by the NAT gateway. |
| private\_ip | Private IP address of the NAT Gateway. |
| public\_ip | Public IP address of the NAT Gateway. |
| subnet\_id | Subnet ID of the subnet in which the NAT gateway is placed. |

