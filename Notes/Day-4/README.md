## 🚀 Day 4 — EC2 Instance with SSH & Security Group

**Objective:**  
Provision a secure EC2 instance on AWS using Terraform, with a Security Group allowing SSH access via a Key Pair.

---

### 📂 Folder Structure

Day-4-ec2-ssh/

├── main.tf

├── variables.tf

├── outputs.tf


---

### ⚙️ What This Module Does

- Creates a **Security Group** to allow inbound SSH (port 22) from any IP (for learning purposes).
- Deploys an **EC2 instance** using a specified AMI.
- Associates the **Key Pair** for secure SSH access.
- Outputs the **Instance ID** and **Public IP**.

---

### ✅ Variables

| Name           | Description                    | Example                 |
|----------------|--------------------------------|-------------------------|
| `region`       | AWS region                     | `ap-south-1`            |
| `instance_name`| Name tag for EC2 instance      | `Day-4-EC2-SSH`         |
| `instance_type`| EC2 instance type              | `t2.micro`              |
| `ami_id`       | AMI ID for the EC2 instance    | `ami-0f918f7e67a3323f0` |
| `key_name`     | Name of your AWS Key Pair      | `terraform-test`        |

> **Note:** The `key_name` must match the key pair you created in AWS EC2 Console — *not* the `.pem` file name.

---

### 🖥️ How to Use

**Initialize Terraform:**
```bash
terraform init

terraform plan \
  -var="instance_name=Day-4-EC2-SSH" \
  -var="ami_id=ami-0f918f7e67a3323f0" \
  -var="key_name=key_name"


terraform apply \
  -var="instance_name=Day-4-EC2-SSH" \
  -var="ami_id=ami-0f918f7e67a3323f0" \
  -var="key_name=key_name"

chmod 400 terraform-test.pem

ssh -i terraform-test.pem ec2-user@<public_ip>

terraform destroy \
  -var="instance_name=Day-4-EC2-SSH" \
  -var="ami_id=ami-0f918f7e67a3323f0" \
  -var="key_name=key_name"


