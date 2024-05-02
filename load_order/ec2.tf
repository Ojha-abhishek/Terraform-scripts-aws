resource "aws_instance" "ec2" {
  ami           = data.aws_ami.amifetch.image_id
  instance_type = var.is_prod ? var.instancetype_prod[0] : var.instancetype_dev[0]

}
