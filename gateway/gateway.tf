# Sample Aviatrix terraform configuration to create a full mesh network on AWS
# This configuration creates a cloud account on Aviatrix controller,
# launches 3 gateways with the created account and establishes tunnels
# between each gateway.


# Edit to enter your controller's IP, username and password to login with.
provider "aviatrix" {
  controller_ip = "${var.controller_public_ip}"
  username = "${var.controller_username}"
  password = "${var.controller_pw}"
}

resource "aviatrix_account" "gw_account" {
  account_name = "${var.aviatrix_account_name}"
  account_password = "${var.aviatrix_account_password}"
  account_email = "${var.aviatrix_account_email}"
  cloud_type = 1
  aws_account_number = "${var.aws_account_number}"
  aws_iam = "true"
  aws_role_app = "arn:aws:iam::${var.aws_account_number}:role/aviatrix-role-app"
  aws_role_ec2 = "arn:aws:iam::${var.aws_account_number}:role/aviatrix-role-ec2"
}

# Create count number of gateways
resource "aviatrix_gateway" "dev_gw" {
  count = "${var.count}"
  cloud_type = 1
  account_name = "${var.aviatrix_account_name}"
  gw_name = "avtxgw-${count.index}"
  vpc_id = "${element(var.vpcs, count.index)}"
  vpc_reg = "${var.region}"
  vpc_size = "t2.micro"
  vpc_net = "${element(var.vpc_nets, count.index)}"
  depends_on = ["aviatrix_account.gw_account"]
}