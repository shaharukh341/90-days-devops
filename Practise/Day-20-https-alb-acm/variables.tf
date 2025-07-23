variable "instance_count" {
  description = "Number of EC2 instances"
  default     = 2
}

variable "key_pair_name" {
  description = "SSH Key pair name"
  type        = string
}

variable "domain_name" {
  description = "Domain name for HTTPS"
  type        = string
  default     = "sharukhshaik.org"
}

variable "admin_email" {
  description = "Email address for domain registration and validation"
  type        = string
  default     = "sharukh.shaik@org"
}

variable "contact_number" {
  description = "Phone number for domain registration (format: +91.XXXXXXXXXX)"
  type        = string
  default     = "+91.9876543210"
}