# Edit to enter your controller's IP, username and password to login with.
provider "aviatrix" {
  controller_ip = "${var.public_ip}"
  username = "admin"
  password = "${var.private_ip}"
}

resource "aviatrix_account" "okta" {
  account_name = "${var.sso_account_username}"
  account_password = "${var.sso_account_pw}"
  account_email = "${var.sso_account_email}"
  cloud_type = 1
  aws_account_number = "${var.aws_account_number}"
  aws_iam = "true"
  aws_role_app = "arn:aws:iam::${var.aws_account_number}:role/aviatrix-role-app"
  aws_role_ec2 = "arn:aws:iam::${var.aws_account_number}:role/aviatrix-role-ec2"
}
