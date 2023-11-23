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

# Specify Department Name
variable "dept_name" {
  default = "XXdeptXX"
}

# Specify Department Name
variable "team_name" {
  default = "XXteamXX"
}

# Specify Department Name
variable "app_name" {
  default = "XXAPP1XX"
}

# Specify Department Name
variable "env_name" {
  default = "XXAPP1XX"
}
# Tags to add to every resource
variable "resource_tags" { 
    type = map(string)
    default = { 
        Owner: "Chewbaca",
        State: "Texas",
        Department: "Engineering",
        Team: "Revan-Plebe",
        App: "The-Revan-APP",
        Env: "Remote-Deployment"
  } 
}
