resource "null_resource" test {}

terraform {
  backend "s3" {
    bucket = "naifahdev"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}