resource "aws_instance" "ignorechanges" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"

  tags = {
    Name = "ec21"
  }

  lifecycle {
    # ignore_changes = [tags,instance_type] #ignores chnages happend mannualy to resources and also terraform arrguments changes are also ignored
    ignore_changes = all
  }
}