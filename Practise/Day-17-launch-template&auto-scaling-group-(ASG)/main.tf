provider "aws" {
  region = var.region
}

resource "aws_instance" "demo" {
  ami           = "ami-020cba7c55df1f615"
  instance_type = var.instance_type

  tags = {
    Name = local.instance_tag
  }
}
