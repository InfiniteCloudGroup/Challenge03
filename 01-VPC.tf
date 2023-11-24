# Create a VPC
resource "aws_vpc" "icg-app" {
  cidr_block = var.vpc_cidr

  tags = "${merge(var.dflt_tags, {Name="app1"}, {aa="bb"})}"

}