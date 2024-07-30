provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-project-a-unique-id"
}

# Remote backend configuration to store the state file in S3
terraform {
  backend "s3" {
    bucket = "project-a-state-bucket"
    key    = "project-a/terraform.tfstate"
    region = "eu-central-1"
  }
}