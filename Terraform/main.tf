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

# Calling the network child module
module "vpc" {
  source = "./Networks"
}

# Calling the server child module
module "Server" {
  source = "./Servers"
}

# Calling the storage child module
module "S3" {
  source = "./Storage"
}

