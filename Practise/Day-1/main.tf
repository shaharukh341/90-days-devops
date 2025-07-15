provider "aws" {
  region = "ap-south-1"  # Use your region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "tf-sharukh341-test"  # Must be globally unique
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
