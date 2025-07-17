provider "aws" {
  region = "us-east-1"
}

# 🔍 Fetch the latest Ubuntu 22.04 LTS AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

# 🖥️ Create an EC2 instance with that Ubuntu AMI
resource "aws_instance" "ubuntu_ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Ubuntu-Server"
  }
}
