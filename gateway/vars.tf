variable "region" {
  default = "us-east-1"
}

variable "aws_account_number" {
  default = "174981058713"
}

variable "controller_username" {
  default = "admin"
}

variable "controller_public_ip" {
  default = "52.202.165.144"
}

variable "controller_pw" {
  default = "Vistadelor0"
}

variable "aviatrix_account_name" {
  default = "gwAcct3"
}

variable "aviatrix_account_password" {
  default = "Aviatrix123"
}

variable "aviatrix_account_email" {
  default = "atsankov@itbit.com"
}

# Increase count default value to add more VPCs and subnets to launch more gateways together.
variable "count" {
  default = 1
}

# Enter VPCs where you want to launch gateways.
variable "vpcs" {
  description = "Launch gateways in different VPCs."
  type = "list"
  default = ["vpc-d02939a8"]
}

# Enter Subnets within VPCs added above.
variable "vpc_nets" {
  description = "Launch gateways in different VPC Subnets."
  type = "list"
  default = ["10.100.0.0/24"]
}
