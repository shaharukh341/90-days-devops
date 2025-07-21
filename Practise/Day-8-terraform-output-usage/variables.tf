variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_name" {
  description = "EC2 Name tag"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "key_name" {
  description = "Name of your existing AWS key pair"
  type        = string
}
