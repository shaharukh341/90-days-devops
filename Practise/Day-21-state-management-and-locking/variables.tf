variable "aws_region" {
  default = "us-east-1"
}

variable "s3_bucket_name" {
  default = "sharukh-devops-tfstate"
}

variable "dynamodb_table_name" {
  default = "terraform-lock-table"
}
