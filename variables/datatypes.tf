resource "aws_instance" "datatypes" {
  ami = "ami-04e5276ebb8451442"
#   instance_type = var.map["ap-southeast-1"]
  instance_type = var.list[1]
 # refrencing atribute values from variables of list and map datatypes
}
