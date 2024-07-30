terraform {
  backend "s3" {
    bucket = "lakshmi-iac"
    key    = "ec2-example/ec2-example.tfstate"
    region = "eu-central-1"
  }
}