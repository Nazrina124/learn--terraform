resource "null_resources" test {}

terraform {
  backend "s3" {
    bucket = "naifahdev"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}