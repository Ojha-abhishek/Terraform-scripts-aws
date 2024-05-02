# default ec2 created for testing default life-cycle behaviour of terraform
resource "aws_instance" "default" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
#ami-07caf09b362be10b8 - Amazon linux ami is old image
#ami-04b70fa74e45c3917 -ubuntu ami will be adding as new

  tags = {
    Name = "Default"
  }
#if any arrgument changed then life-cycle rule create before destroy will create new configured resource than destroy happens to old resource
  lifecycle {
    create_before_destroy = true
  }
}

/*
if we change the any arrgument in resource of 
ec2 then if we do terraform apply, terraform will destroy the 
previous running resource and creates new configured
resource this is default but we need to create 
resource before destroying previous resource
*/
