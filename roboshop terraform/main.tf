
resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids


  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend.dev.${var.domain_name}"
  type    = "A"
  ttl     = 3
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "mongo"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = var.zone_id
  name    = "mongo.dev.${var.domain_name}"
  type    = "A"
  ttl     = 3
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z03035903COPLEGQ5980F"
  name    = "catalogue.dev.${var.domain_name}"
  type    = "A"
  ttl     = 3
  records = [aws_instance.catalogue.private_ip]
}