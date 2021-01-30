/* For more details on the configuration, visit the official documentation:
    https://www.terraform.io/docs/providers/aws/r/eip.html
*/

resource "aws_eip" "default" {
  vpc = true

  tags = var.tags
}