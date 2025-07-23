# 📌 Day 21 - Terraform State Management & Locking

## ✅ Goal
Set up secure and collaborative state management using **remote S3 backend** with **DynamoDB state locking** to prevent race conditions in a team environment.

---

## 🧱 Infrastructure

- **S3 Bucket**: Stores the `terraform.tfstate` file
- **DynamoDB Table**: Enables state locking and consistency
- **AWS Provider**: Region: `us-east-1`

---

## 📁 Files Overview

| File          | Purpose                                   |
|---------------|-------------------------------------------|
| `backend.tf`  | Declares S3 backend and DynamoDB locking  |
| `main.tf`     | Creates S3 bucket and DynamoDB table      |
| `variables.tf`| Stores input values like region and names |
| `outputs.tf`  | Displays created resources after apply    |

---

## 🚀 Steps to Use

1. **Initialize Backend**  
    Make sure `backend.tf` is configured, then run:
    ```bash
   terraform init
2. **Plan and Apply**
    terraform plan
    terraform apply

3. **Check State Locking**
    Run terraform apply from two terminals to observe locking