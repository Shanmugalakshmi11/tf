terraform {
  backend "s3" {
    bucket = "lakshmi-iac"
    key    = "ec2-example/terraform.tfstate"
    region = "eu-central-1"
  }
}