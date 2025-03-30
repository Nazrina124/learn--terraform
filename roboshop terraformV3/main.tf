
resource "aws_instance" "instances" {
    for_each = var.components
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = data.aws_security_groups.sg.ids


  tags = {
    Name = "{each.key]}.dev"
  }
}

resource "aws_route53_record" "frontend" {
    for_each =var.components
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = {each.key}.dev.${var.domain_name}"
  type    = "A"
  ttl     = 3
  records = [aws_instance.instances.[each.key].private_ip]
}

