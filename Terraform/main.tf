terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}


# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

# Calling the network child module
module "Networks" {
  source = "./Networks"
}

# Calling the server child module
module "Server" {
  source = "./Servers"
}

# Calling the storage child module
module "s3Webserver" {
  source = "./Storage"
}

