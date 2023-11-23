# Create 3 Public Subnets
resource "aws_subnet" "my_public_subnets" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.icg-app.id
  cidr_block        = cidrsubnet(aws_vpc.icg-app.cidr_block, 8, count.index + 1)  #Remo's the man!
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "public-${var.availability_zones[count.index]}"
  }
}

#Create 3 Private Subnets
resource "aws_subnet" "my_private_subnets" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.icg-app.id
  cidr_block        = cidrsubnet(aws_vpc.icg-app.cidr_block, 8, count.index + 11) #Remos the man!
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "private-${var.availability_zones[count.index]}"
  }
}