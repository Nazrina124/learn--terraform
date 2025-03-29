data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}


data "aws_security_groups" "sg" {
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }

}

data "aws_route53_zone" "zone" {
  name         = "var.domain_name"
}
