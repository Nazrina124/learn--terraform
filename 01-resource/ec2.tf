resource "aws_instance" "web" {
  ami           = "ami-008e7b65af911ed5c"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-for-terraform"
  }
}
#