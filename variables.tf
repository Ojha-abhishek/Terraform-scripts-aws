variable "iam_user" {
  type = list
  default = ["development","stagging","production"] #will refer these var in countIndex for iam user cration with unique name
}