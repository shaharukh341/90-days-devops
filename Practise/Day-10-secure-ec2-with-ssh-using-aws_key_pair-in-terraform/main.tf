provider "aws" {
  region = var.region
}

# 🗝️ Generate SSH key pair
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# 🔐 Create AWS key pair
resource "aws_key_pair" "generated" {
  key_name   = "day10-key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "aws_security_group" "ssh_access" {
  name        = "day10-ssh-sg"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # open to all; later restrict to your IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "secure_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.generated.key_name
  vpc_security_group_ids      = [aws_security_group.ssh_access.id]

  tags = {
    Name = "Day10-SSH-EC2"
  }
}


