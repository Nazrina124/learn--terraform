
resource "aws_instance" "instances" {
    for_each = var.components
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = data.aws_security_groups.sg.ids


  tags = {
    Name = "${each.key}.dev"
  }

provisioner "remote-exec" {
  connection {
    user = "ec2-user"
    password ="DevOps321"
    host = self.private_ip

    }

   inline = [
    "sudo pip-3.11 install ansible",
    "ansible-pull -i localhost, -U https://github.com/Nazrina412/Ansible-Robo main.yml -e env=dev -e role_name=${each.key}"
    ]
  }
}

resource "aws_route53_record" "frontend" {
    for_each = var.components
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "${each.key}.dev.${var.domain_name}"
  type    = "A"
  ttl     = 3
  records = [aws_instance.instances[each.key].private_ip]
}

