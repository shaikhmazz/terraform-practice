
resource "aws_instance" "my_max" {
  ami             = var.instance_ami
  instance_type   = var.instance_type
  key_name        = aws_key_pair.mazz3key.key_name
  security_groups = [aws_security_group.mark-sg.id]

  tags = {
    Name = "my-max"
  }
}
