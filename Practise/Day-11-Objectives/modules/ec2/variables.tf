variable "ami_id" {
  type        = string
  description = "AMI ID for EC2"
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
}

variable "instance_name" {
  type        = string
  description = "Name tag for the instance"
}
