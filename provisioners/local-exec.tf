resource "aws_instance" "localexecec2" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> server_ip.txt"
  }
}