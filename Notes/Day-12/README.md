# Day 12 - Terraform Remote Backend (S3 + DynamoDB)

## 🧩 Goal
Set up remote backend for Terraform using AWS S3 (for state storage) and DynamoDB (for state locking).

## 🚀 Resources Created
- S3 bucket with versioning to store the Terraform state file.
- DynamoDB table to lock the state file to prevent race conditions.

## ⚙️ Setup Steps
1. Run `terraform init`
2. Run `terraform apply` to provision the S3 and DynamoDB.
3. Move `backend.tf` into the folder and run `terraform init` again to enable remote backend.

