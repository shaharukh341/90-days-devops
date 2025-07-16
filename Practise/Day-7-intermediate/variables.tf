variable "project_name" {}
variable "env" {}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "allowed_ports" {
  type    = list(number)
  default = [22, 80, 443]
}

variable "instance_type" {
  default = "t2.micro"
}
