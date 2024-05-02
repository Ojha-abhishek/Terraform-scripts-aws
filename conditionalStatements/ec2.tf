provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "devec2" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"
  count = var.isdev == true ? 2 : 0 #condition expression ?-> then true :-> false

  tags = {
    Name = var.ec2name_dev[count.index]
  }
}

resource "aws_instance" "prodec2" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t2.large"
  count = var.isdev == false ? 4 : 0 #condition expression ?-> then true :-> false

  tags = {
    Name = var.ec2name_prod[count.index]
  }   
}