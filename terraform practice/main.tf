

#key pair
resource "aws_key_pair" "mazz3key" {
  key_name   = "mazz3key"
  public_key = file("mazz3.pub")
}

#vpc
resource "aws_vpc" "default-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "default-vpc"
  }
}

#security
resource "aws_security_group" "mark-sg" {
  name        = "mark-sg"
  description = "Allow SSH "
  vpc_id      = aws_vpc.default-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
