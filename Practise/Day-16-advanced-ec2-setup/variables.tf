variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-053b0d53c279acc90" # Ubuntu AMI (us-east-1)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "us-east-1"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
}

variable "private_key_path" {
  description = "Path to your private SSH key"
}

variable "volume_size" {
  default = 5
}
