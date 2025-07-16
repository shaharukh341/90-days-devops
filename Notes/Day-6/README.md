# 🚀 Day 6 — Remote State, Locking, and Modules

**Goal:**  
- Store Terraform state securely in **S3**
- Lock state with **DynamoDB**
- Use **reusable EC2 module**
- Manage **multiple environments**

---

## 📂 Folder Structure

Day-6-remote-state-modules/
├── backend.tf
├── dev/
│ ├── main.tf
│ ├── terraform.tfvars
│ ├── outputs.tf
├── modules/
│ └── ec2-instance/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── userdata.sh

yaml
Copy
Edit

---

## ⚙️ Remote Backend

**S3 Bucket:** `90-days-devops-tfstate`  
**DynamoDB Table:** `terraform-lock` (Partition key: `LockID`)

---

## 🔑 How to Deploy

```bash
cd dev
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
📌 How to Destroy
bash
Copy
Edit
terraform destroy -var-file="terraform.tfvars"
✅ What’s Covered
Remote state in S3

State locking in DynamoDB

Reusable EC2 module

User Data script to install Apache

Multiple environments possible (dev, prod)

🚀 Result
✅ Public IP output

✅ Apache running

✅ Infrastructure reusable & safe for teams!