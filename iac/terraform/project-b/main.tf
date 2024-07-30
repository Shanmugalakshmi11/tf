provider "aws" {
  region = "eu-central-1"
}

# Remote backend configuration to store the state file in S3
terraform {
  backend "s3" {
    bucket = "project-b-state-bucket"
    key    = "project-b/terraform.tfstate"
    region = "eu-central-1"
  }
}

# Data source to access the remote state of Project A
data "terraform_remote_state" "project_a" {
  backend = "s3"
  config = {
    bucket = "project-a-state-bucket"
    key    = "project-a/terraform.tfstate"
    region = "eu-central-1"
  }
}

# Use the output from Project A
output "project_a_bucket_name" {
  value = data.terraform_remote_state.project_a.outputs.bucket_name
}
