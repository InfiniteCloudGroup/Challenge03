# Put an instance in each subnet
resource "aws_instance" "trg" {
  count         = length(var.availability_zones)
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_public_subnets[count.index].id

  tags = {
    Name = "ec2-${var.availability_zones[count.index]}"
  }
}
