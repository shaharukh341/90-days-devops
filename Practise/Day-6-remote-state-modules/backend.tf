terraform {
  backend "s3" {
    bucket         = "90-days-devops-tfstate"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

terraform {
  backend "s3" {
    bucket         = "90-days-devops-tfstate"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
