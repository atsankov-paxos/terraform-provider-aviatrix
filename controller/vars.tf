variable "region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

variable "vpc" {
  default = "vpc-d02939a8"
}

variable "subnet" {
  default = "subnet-9a1568a5"
}

variable "keypair" {
  default = "atsankov"
}

variable "ec2role" {
  default = "aviatrix-role-ec2"
}

#
# Defaults
#

provider "aws" {
  region  = "${var.region}"
  profile = "${var.aws_profile}"
}


# This is the default root volume size as suggested by Aviatrix
variable "root_volume_size" {
  default = 16
}

variable "root_volume_type" {
  default = "standard"
}

variable "incoming_ssl_cidr" {
  default = ["0.0.0.0/0"]
}

variable "instance_type" {
  default = "t2.medium" // for 25
  // default = "t2.large" // for 100 license
}

variable "images" {
  default = {
    us-east-1 = "ami-cea964b4" //25 license
    // us-east-1 = "ami-0daf6277" // 100 license
  }
}
