provider "aws" {
  region = "us-east-1"
}

#signle resource attributes values are read by data
#data resource will read the file/provider resource attributes outside of terraform

data "aws_instance" "instancedata" {
  instance_tags = {
    Service = "AppServer"
  }
}


data "aws_instances" "multiatrributes" {
  instance_state_names = ["running"]

  filter {
    name   = "tag:Owner"
    values = ["DevOps Team"]
  }
}
