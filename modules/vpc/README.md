# tf-module-vpc
 Provision a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you define

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| assign\_generated\_ipv6\_cidr\_block | Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. | `bool` | `false` | no |
| cidr\_block | The CIDR block for the VPC | `string` | `""` | no |
| domain\_name | Suffix domain name to use by default when resolving non Fully Qualified Domain Names. | `string` | `""` | no |
| enable\_classiclink\_dns\_support | A boolean flag to enable/disable ClassicLink DNS Support for the VPC. | `bool` | `false` | no |
| enable\_dns\_hostnames | A boolean flag to enable/disable DNS hostnames in the VPC. | `bool` | `false` | no |
| enable\_dns\_support | A boolean flag to enable/disable DNS support in the VPC. | `bool` | `true` | no |
| enable\_flow\_log | Enable or disable VPC Flow logs. | `bool` | `false` | no |
| instance\_tenancy | A tenancy option for instances launched into the VPC, can be: default, host or dedicated, for more information: https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/dedicated-instance.html | `string` | `"default"` | no |
| log\_destination | ARN of bucket the logging destination. | `string` | `""` | no |
| log\_destination\_type | The type of the logging destination. Valid values: cloud-watch-logs, s3. | `string` | `"s3"` | no |
| ntp\_servers | List of NTP servers to configure. | `list` | `[]` | no |
| tags | Setting tags for the feature | `map(string)` | `{}` | no |
| traffic\_type | Type of traffic to capture. Valid values: ACCEPT,REJECT, ALL. | `string` | `"ALL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| dhcp\_options\_arn | ARN of the DHCP Options Set. |
| dhcp\_options\_association\_dhcp\_options\_id | ID of the DHCP Options Set to associate to the VPC. |
| dhcp\_options\_association\_vpc\_id | ID of the VPC to which we would like to associate a DHCP Options Set. |
| dhcp\_options\_id | ID of the DHCP Options Set. |
| dhcp\_options\_owner\_id | ID of the AWS account that owns the DHCP options set. |
| vpc\_arn | ARN of VPC. |
| vpc\_cidr\_block | CIDR block of the VPC. |
| vpc\_flow\_log\_arn | ARN of the Flow Log. |
| vpc\_flow\_log\_id | Flow Log ID |
| vpc\_id | ID of the VPC. |