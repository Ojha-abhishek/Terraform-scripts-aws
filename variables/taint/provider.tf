terraform {
  required_version = "=1.8.2"
  required_providers {
    aws = "~>5.4"
  }
}

provider "aws" {
  region = "us-east-1"
}