resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["vpc-0b3bc4ea0b05389f7"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongo" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["vpc-0b3bc4ea0b05389f7"]

  tags = {
    Name = "mongo"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["vpc-0b3bc4ea0b05389f7"]

  tags = {
    Name = "catalogue"
  }
}