variable "aws_account_number" {}

variable "controller_username" {}

variable "controller_pw" {}

variable "aviatrix_account_name" {}

variable "aviatrix_account_password" {}

variable "aviatrix_account_email" {}

# Increase count default value to add more VPCs and subnets to launch more gateways together.
variable "count" {
  default = 3
}

# Enter VPCs where you want to launch gateways.
variable "vpcs" {
  description = "Launch gateways in different VPCs."
  type = "list"
  default = ["vpc-7a6b2513", "vpc-2ee4a147", "vpc-0d7b3664"]
}

# Enter Subnets within VPCs added above.
variable "vpc_nets" {
  description = "Launch gateways in different VPC Subnets."
  type = "list"
  default = ["10.1.0.0/24", "10.2.0.0/24", "10.3.0.0/24"]
}
