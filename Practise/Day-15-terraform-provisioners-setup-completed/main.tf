#resource "aws_key_pair" "deployer" {
#  key_name   = "us-east-1"
#  public_key = file("~/.ssh/id_ed25519.pub") # Make sure this file exists
#}

resource "aws_security_group" "ssh_access" {
  name        = "allow-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open to all (for testing, restrict in prod)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "provisioned" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids      = [aws_security_group.ssh_access.id]
  associate_public_ip_address = true

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install nginx -y",
      "sudo systemctl start nginx",
      "sudo apt install zip -y",
      "sudo apt install tar -y"
    ]

  connection {
    type        = "ssh"
    user        = "ubuntu" # Use "ec2-user" for Amazon Linux
    private_key = file(var.pem_path)
    host        = self.public_ip
    timeout     = "2m"
  }
  }

  tags = {
    Name = "Day15-Provisioned-EC2"
  }
}