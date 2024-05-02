provider "aws" {
  region = "us-east-1"
}

locals {   #A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression.
  common_tags ={
    Service = "AppServer"
    Owner = "DevOps Team"
  }
} 

resource "aws_instance" "terraform-automated-ec2" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
  tags = local.common_tags
  count = 2

  # tags = {
  #   Name = "ec2-terraform"
  # }
}

resource "aws_eip" "lb" {
  domain = "vpc"
} #elastic ip