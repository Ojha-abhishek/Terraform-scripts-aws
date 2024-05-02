provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

resource "aws_security_group" "example" {
  name = "attribute-sg"
}

resource "aws_vpc_security_group_ingress_rule" "ingress" {
  security_group_id = aws_security_group.example.id  
  cidr_ipv4 = "${aws_eip.lb.public_ip}/32" #refrencing the public_ip of aws elastic ip in string interpolation
  ip_protocol = "tcp"
  from_port = 443
  to_port = 443
}

output "public-ip" {
  value = aws_eip.lb.public_ip
}