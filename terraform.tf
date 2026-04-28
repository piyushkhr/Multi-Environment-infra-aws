# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.42.0"
    }
  }
}

# AWS Provider Configuration Block
provider "aws" {
    region = "ap-south-1"
  # Configuration options
}