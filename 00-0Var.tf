# Specify the region in which we would want to deploy your stack
variable "region" {
  default = "us-east-1"
}

# Name this project
variable "proj_name" {
  default = "XYZ-Proj"
}

# Specify 3 availability zones from the region
variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# Specify VPC CIDR
variable "vpc_cidr" {
  default = "10.32.0.0/16"
}

# Tags to add to every resource
variable "dflt_tags" { 
    type = map(string)
    default = { 
        Owner:      "Chewbaca",
        State:      "Texas",
        Department: "Engineering",
        Team:       "Revan-Plebe",
        App:        "The-Revan-APP",
        Env:        "Remote-Deployment"
  } 
}
