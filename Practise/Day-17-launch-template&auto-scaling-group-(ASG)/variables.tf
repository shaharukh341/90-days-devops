variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID to use"
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI for us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of existing EC2 Key Pair"
}