variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-053b0d53c279acc90" # Ubuntu AMI (us-east-1)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the existing AWS key pair"
  default     = "us-east-1_1"
}
