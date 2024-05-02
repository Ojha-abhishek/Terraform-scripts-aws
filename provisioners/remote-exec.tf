resource "aws_instance" "remotexec" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  key_name = "Terraform"
  vpc_security_group_ids = ["sg-id"]

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("${path.module}/Terraform.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    when = create
    inline = [ 
        "sudo yum -y install nginx",
        "sudo systemctl start nginx",
     ]
  }
}