resource "aws_key_pair" "terra-key" {
  key_name   = var.priv-key-path
  public_key = file(var.pub-key-path)
}

resource "aws_instance" "terra-ec2" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.terra-key.key_name
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true

  tags = {
    Name = var.project
  }
}
