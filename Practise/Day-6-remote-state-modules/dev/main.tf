provider "aws" {
  region = "ap-south-1"
}

variable "instance_name" {}
variable "ami_id" {}
variable "key_name" {}

module "ec2" {
  source         = "../modules/ec2-instance"
  instance_name  = var.instance_name
  ami_id         = var.ami_id
  key_name       = var.key_name
}
