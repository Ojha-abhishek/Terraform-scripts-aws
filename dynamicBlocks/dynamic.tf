# avoid writting nested blocks which can be solved by dynamic way
#comnined together in single block

resource "aws_security_group" "dynamicSg" {
  name = "dynamic-sg"
  description = "Ingress rules for application01"

  dynamic "ingress" {
    for_each = var.sg_ports
    # iterator = "port"
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}