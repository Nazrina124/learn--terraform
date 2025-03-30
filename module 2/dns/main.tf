resource "aws_route53_record" "frontend" {
  zone_id = "Z03035903COPLEGQ5980F"
  name    = "$test1.naifah.online"
  type    = "A"
  ttl     = 3
  records = [var.private_ip]
}

variable "private_ip" {}