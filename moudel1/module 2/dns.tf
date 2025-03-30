resource "aws_route53_record" "frontend" {
    for_each = var.components
  zone_id = "Z03035903COPLEGQ5980F"
  name    = "$test.naifah.online"
  type    = "A"
  ttl     = 3
  records = [var.private_ip]
}

variable "private_ip" {}