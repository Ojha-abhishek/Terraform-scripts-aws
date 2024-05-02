variable "sg_ports" {
  type = list(number)
  description = "list of ingress ports for security group"
  default = [22, 443, 80, 8080, 3306]
}