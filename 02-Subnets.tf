# Create 3 Public Subnets
resource "aws_subnet" "my_public_subnets" {                                             #count loop through & program the subnets
  count             = length(var.availability_zones)                                    #enumerate the number of AZ's listed in var
  vpc_id            = aws_vpc.icg-app.id
  cidr_block        = cidrsubnet(aws_vpc.icg-app.cidr_block, 8, count.index + 1)        #CIDR's of Remo's line - https://bit.ly/3MS56Ne
  availability_zone = var.availability_zones[count.index]                               #MAP type VAR for the desired deployment AZ's

  tags = {
    Name = "public-${var.availability_zones[count.index]}"
  }
}

#Create 3 Private Subnets
resource "aws_subnet" "my_private_subnets" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.icg-app.id
  cidr_block        = cidrsubnet(aws_vpc.icg-app.cidr_block, 8, count.index + 11)       #Remos the man!
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "private-${var.availability_zones[count.index]}"
  }
}









/*
# Create 3 Public Subnets
resource "aws_subnet" "my_public_subnets" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.icg-app.id
  cidr_block        = cidrsubnet(aws_vpc.icg-app.cidr_block, 8, count.index + 1)        #Remo's fix, he's the man!
  availability_zone = var.availability_zones[count.index]
            
                                                                                        #Tags = "${merge(var.resource_tags, {extra-key1="extra-value1"}, {extra-key2="extra-value2")}"
  tags = "${merge(var.resource_tags, {extra-key1="extra-value1"}, {extra-key2="extra-value2"},{
  Name = "public-${var.availability_zones[count.index]}"                                #Name subnet with Region concatenated with AZ
  })}"
}

#Create 3 Private Subnets
resource "aws_subnet" "my_private_subnets" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.icg-app.id
  cidr_block        = cidrsubnet(aws_vpc.icg-app.cidr_block, 8, count.index + 11)       #Remos fix, he's the man!
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "private-${var.availability_zones[count.index]}"
  }
}
*/