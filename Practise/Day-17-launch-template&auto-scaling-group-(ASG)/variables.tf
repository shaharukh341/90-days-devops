variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "project" {
  type        = string
  default     = "devops"
  description = "Project name for tagging"
}

variable "is_production" {
  type        = bool
  default     = false
}
