resource "aws_iam_user" "iamuser" {
#   name = "user.${count.index}" count index
  name = var.iam_user[count.index] #refering variable and taking name of list with count index
  path = "/system/"
  count = 3
}