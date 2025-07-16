# 🚀 Day 7 — Intermediate Terraform Project

**Goal:**  
This project demonstrates intermediate Terraform concepts:
- ✅ `locals` for DRY naming
- ✅ `data` sources for dynamic AMI lookup
- ✅ `dynamic` blocks for flexible security rules
- ✅ Proper module structure (network & compute)
- ✅ Safe VPC, subnet, SG, EC2 setup
- ✅ Outputs for easy reuse

---

## 📂 Project Structure

Day-7-intermediate/

├── main.tf

├── variables.tf

├── locals.tf

├── outputs.tf

├── terraform.tfvars

├── modules/

│ ├── network/

│ │ ├── main.tf

│ │ ├── variables.tf

│ │ ├── outputs.tf

│ ├── compute/

│ │ ├── main.tf

│ │ ├── variables.tf

│ │ ├── outputs.tf

└── README.md

markdown

Edit

---

## 📌 How it works

**Modules:**
- `network` → Creates VPC & subnet.
- `compute` → Creates SG & EC2 in that subnet.

**Key Features:**
- **`locals`** ensure naming is consistent.
- **`data` source** dynamically fetches latest Ubuntu AMI.
- **`dynamic` block** generates flexible ingress rules for multiple ports.
- **Outputs** share `vpc_id`, `subnet_id`, and `instance_public_ip`.

---

## ✅ Variables

Edit `terraform.tfvars`:

```hcl
project_name = "day7-demo"
env          = "dev"
Defaults:

VPC CIDR: 10.0.0.0/16

Subnet CIDR: 10.0.1.0/24 (set inside module)

Allowed ports: [22, 80, 443]

EC2 type: t2.micro

⚙️ Commands
Initialize:



Edit
terraform init
Preview:



Edit
terraform plan -var-file="terraform.tfvars"
Apply:



Edit
terraform apply -var-file="terraform.tfvars"
Destroy:



Edit
terraform destroy -var-file="terraform.tfvars"
✅ Outputs
When complete, Terraform will output:

vpc_id — The VPC ID of your custom VPC.

subnet_id — The subnet used by your EC2.

instance_public_ip — Public IP to SSH.

🗝️ Best Practice
✔️ All resources belong to the same custom VPC.
✔️ Subnet is inside that VPC → no default VPC conflict.
✔️ Security group is in the same VPC → so EC2 launches cleanly.
✔️ Use terraform plan to always verify changes.

