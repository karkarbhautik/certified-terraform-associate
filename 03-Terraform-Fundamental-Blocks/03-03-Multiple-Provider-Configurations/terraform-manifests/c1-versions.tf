# Terraform Block
terraform {
  required_version = "~> 0.15"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider-1 for me-south-1 (Default Provider)
provider "aws" {
  region = "me-south-1"
  profile = "default"
}

# Provider-2 for eu-west-1
provider "aws" {
  region = "eu-west-1"
  profile = "default"
  alias = "aws-west-1"
}


