# Terraform Settings Block
terraform {
  # Terraform Version
  required_version = "~> 0.15.4"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.42.0"
    }
    # Random Provider
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "me-south-1"
  profile = "default" # Defining it for default profile is Optional
}
