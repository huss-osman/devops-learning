terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.24.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}
