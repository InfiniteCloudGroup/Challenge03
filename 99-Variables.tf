# Specify the region in which we would want to deploy our stack
variable "region" {
  default = "us-east-1"
}

# Specify 3 availability zones from the region
variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# Specify VPC CIDR
variable "vpc_cidr" {
  default = "10.32.0.0/16"
}

# Specify public subnets
variable "public_subnets" {
  default = ["10.32.1.0/24","10.32.2.0/24","10.32.3.0/24"]
}

# Specify private subnets
variable "private_subnets" {
  default = ["10.32.11.0/24","10.32.12.0/24","10.32.13.0/24"]
}