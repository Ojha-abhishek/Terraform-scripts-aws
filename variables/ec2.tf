# provider "aws" {
#   region = "us-east-1"
# }

resource "aws_instance" "terraform-automated-ec2" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]  # resource attribute refrence and list datatype

  tags = {
    Name = "ec2-terraform"
  }
}

resource "aws_eip" "lb" {
  domain = "vpc"
} #elastic ip