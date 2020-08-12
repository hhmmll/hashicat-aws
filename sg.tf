module "security-group" {
  source  = "hhmmll/security-group/aws"
  version = "3.13.0"
  # insert the 2 required variables here
  name = "${var.prefix}-security-group-from-module"
  vpc_id = "${aws_vpc.hashicat.id}"
}