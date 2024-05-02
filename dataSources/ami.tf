data "aws_ami" "fetchAmi" {
  most_recent = true
  owners      = ["amazon"]
  #   executable_users = ["self"]


  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "ec2fromAmiData" {
  ami           = data.aws_ami.fetchAmi.image_id
  instance_type = "t2.micro"
}

