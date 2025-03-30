resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids


  tags = {
    Name = "frontend"
  }
}