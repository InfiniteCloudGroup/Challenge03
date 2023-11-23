resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.icg-app.id

  tags = {
    Name = "IGW"
    Owner = "TRG"
  }
}