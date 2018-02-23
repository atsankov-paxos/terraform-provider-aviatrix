variable "region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

variable "master-account-id" {
  default = "false"
}

data "aws_caller_identity" "current" {}

#Define the region
provider "aws" {
  region     = "${var.region}"
  profile    = "${var.aws_profile}"

}
