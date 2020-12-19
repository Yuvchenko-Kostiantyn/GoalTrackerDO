terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "mrpipikadohacathon"
    key = "Hacathon/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "Hacathon"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/user/.aws/credentials"
}