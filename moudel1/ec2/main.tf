resource "aws_instance" "test" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09b81f0daabd7b47a"]


  tags = {
    Name = "frontend"
  }
}

output "private_ip" {
value = aws_instance.test.private_ip

}