# Create a VPC
resource "aws_vpc" "icg-app" {
  cidr_block = var.vpc_cidr

#For an inline version you could do this
#Tags = "${merge(var.resource_tags, {a="bb"})}"
#For a table version in Var file us this
tags = "${merge(var.resource_tags)}"
}