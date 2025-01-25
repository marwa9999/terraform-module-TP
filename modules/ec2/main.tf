resource "aws_instance" "instances" {
  count                  = var.instance_count
  ami                    = "ami-06e02ae7bdac6b938" # Ubuntu 20.04
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "Node-0${count.index + 1}"
  }
}

variable "instance_count" {
  default = 3
}

variable "subnet_id" {}

variable "security_group_ids" {
  type = list(string)
}
