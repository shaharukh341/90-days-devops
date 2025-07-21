provider "aws" {
  region = var.region
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
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

resource "aws_instance" "advanced_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install.sh",
      "sudo bash /tmp/install.sh"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file(var.private_key_path)
      host = aws_instance.advanced_ec2.public_ip
    }
  }

  provisioner "file" {
    source      = "install.sh"
    destination = "/tmp/install.sh"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = aws_eip.elastic_ip.public_ip
    }
  }

  tags = {
    Name = "AdvancedEC2"
  }
}

resource "aws_ebs_volume" "extra_volume" {
  availability_zone = aws_instance.advanced_ec2.availability_zone
  size              = var.volume_size
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.extra_volume.id
  instance_id = aws_instance.advanced_ec2.id
  force_detach = true
}

resource "aws_eip" "elastic_ip" {
  # vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.advanced_ec2.id
  allocation_id = aws_eip.elastic_ip.id
}