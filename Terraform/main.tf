terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

# Calling network module
module "S3" {
  source = "./Networks"
}

# Calling EC2 child module
module "Ec2" {
  source = "./Servers"
}

# Calling S3 child module
module "S3" {
  source = "./Storage"
}

