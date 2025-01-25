resource "aws_instance" "app_servers" {
  count                  = 3
  ami                    = "ami-06e02ae7bdac6b938" # Ubuntu 20.04
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = "my-key"
  vpc_security_group_ids = [aws_security_group.secure_sg.id]

  tags = {
    Name = "Node-0${count.index + 1}"
  }
}
