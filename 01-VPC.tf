# Create a VPC
resource "aws_vpc" "icg-app" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "icg-app"
  }
}