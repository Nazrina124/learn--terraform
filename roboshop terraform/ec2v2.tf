resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09b81f0daabd7b47a"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z03035903COPLEGQ5980F"
  name    = "frontend"
  type    = "A"
  ttl     = 3
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09b81f0daabd7b47a"]

  tags = {
    Name = "mongo"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = "Z03035903COPLEGQ5980F"
  name    = "mongo"
  type    = "A"
  ttl     = 3
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09b81f0daabd7b47a"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z03035903COPLEGQ5980F"
  name    = "catalogue"
  type    = "A"
  ttl     = 3
  records = [aws_instance.catalogue.private_ip]
}