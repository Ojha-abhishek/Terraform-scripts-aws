variable "is_prod" {
  default = false
}

variable "instancetype_prod" {
  type    = list
  default = ["t2.large"]
}

variable "instancetype_dev" {
  type    = list
  default = ["t2.micro"]
}

