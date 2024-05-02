resource "aws_instance" "tantconscept" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
}

#splat uses to take all attributes of resource or mentioned as below
resource "aws_iam_user" "splat" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.splat[*].arn #splate[*]--> all arn names of iam user created we can aslo provide index for specific iam user like [0]
}