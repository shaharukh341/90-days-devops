# 🚀 Day 7 — Intermediate Terraform

**Features:**
- Uses `locals` for DRY naming.
- Uses `data` source for dynamic AMI lookup.
- Uses `dynamic` block for flexible SG rules.
- Modular — separate network & compute.
- Outputs for chaining to CI/CD.

---

## 📂 Structure

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

│ ├── compute/

│ │ ├── main.tf

│ │ ├── variables.tf

│ │ ├── outputs.tf