provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "dynamodb_table" {
  source     = "./modules/dynamodb"
  table_name = var.dynamodb_table_name
}
