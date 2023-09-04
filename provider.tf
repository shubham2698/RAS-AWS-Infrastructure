terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  
  region = "ap-south-1"
}

data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}


