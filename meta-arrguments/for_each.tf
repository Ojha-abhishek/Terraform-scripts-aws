resource "aws_iam_user" "iamuser" {
  for_each = toset( ["user-01","user-02","user-03"] )
  name = each.key 
}

/* here in for_each index will be name of the key in set datatype
aws_iam_user.iamuser["user-01"]

In below block for_each is having map key value pair and 
instance types are distinct creates two resource with 
two types of instance types where count can be used for identical 
*/

resource "aws_instance" "myec2" {
  ami = "ami-04b70fa74e45c3917"
  for_each = {
    key1 = "t2.micro" 
    key2 = "t2.medium"
  }
  instance_type = each.value
  key_name = each.key

  tags = {
    Name = each.value
  }
}