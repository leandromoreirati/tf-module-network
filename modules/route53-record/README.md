# tf-module-route53-record
An elastic IP address is a static IPv4 address designed for dynamic cloud computing, this module allows us to configure an elastic ip and associate it with our vpc.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| terraform | ~> 0.12.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| associate\_with\_private\_ip | User specified primary or secondary private IP address to associate with the Elastic IP address. | `string` | `""` | no |
| availability\_zone | Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `list` | `[]` | no |
| custom\_name | Name fo subnet to merge in tags. | `string` | `""` | no |
| environment | Environment of the application. | `string` | `""` | no |
| instance | EC2 instance ID. | `string` | `""` | no |
| tags | Setting tags for the feature | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | EIP allocation ID. |
| private\_dns | Private IP address (if in VPC). |
| private\_ip | Private IP address (if in VPC). |
| public\_dns | Public IP address. |
| public\_ip | Public IP address. |
