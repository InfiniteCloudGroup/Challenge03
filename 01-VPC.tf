# Create a VPC
resource "aws_vpc" "icg-app" {
  cidr_block = var.vpc_cidr

  tags = "${merge(var.resource_tags, {extra-key1="extra-value1"}, {extra-key2="extra-value2"})}"     #Tags: Use Var.tf defaults PLUS 2 extra listed here

}