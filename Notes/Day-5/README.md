## 🚀 Day 5 — EC2 with User Data: Apache Web Server (Ubuntu)

**Objective:**  
Provision an EC2 instance on AWS using Terraform and automatically install & start Apache (apache2) using **User Data** on **Ubuntu**.

---

### 📂 Folder Structure

Day-5-ec2-userdata/

├── main.tf

├── variables.tf

├── outputs.tf

├── userdata.sh

yaml
Copy
Edit

---

### ⚙️ What This Does

- Creates a **Security Group** that allows SSH (port 22) and HTTP (port 80).
- Launches an **EC2 instance** using an Ubuntu AMI.
- Uses **User Data** to:
  - Update packages
  - Install Apache (`apache2`)
  - Start & enable Apache
  - Serve a test web page
- Outputs the **public IP** for browser access.

---

### ✅ Variables

| Name           | Description                      | Example                       |
|----------------|----------------------------------|-------------------------------|
| `region`       | AWS region                       | `ap-south-1`                  |
| `instance_name`| EC2 Name tag                     | `Day-5-EC2-UserData`          |
| `instance_type`| EC2 instance type                | `t2.micro`                    |
| `ami_id`       | AMI ID for the Ubuntu image      | `ami-0f918f7e67a3323f0`       |
| `key_name`     | Name of your AWS Key Pair        | `terraform-test`              |

> 📌 **Note:** `key_name` is the Key Pair name in AWS, not the `.pem` file name.

---

### 🗂️ How to Deploy

**Initialize Terraform:**
```bash
terraform init
Plan:

bash
Copy
Edit
terraform plan \
  -var="instance_name=Day-5-EC2-UserData" \
  -var="ami_id=ami-0f918f7e67a3323f0" \
  -var="key_name=terraform-test"
Apply:

bash
Copy
Edit
terraform apply \
  -var="instance_name=Day-5-EC2-UserData" \
  -var="ami_id=ami-0f918f7e67a3323f0" \
  -var="key_name=terraform-test"
🌐 Access the Web Server
1️⃣ Get the Public IP:

bash
Copy
Edit
terraform output
2️⃣ Open in your browser:

cpp
Copy
Edit
http://<public_ip>
You should see:

Welcome to Day 5 - Apache is running on Ubuntu!

🔐 SSH into the EC2
bash
Copy
Edit
chmod 400 terraform-test.pem

ssh -i terraform-test.pem ubuntu@<public_ip>
⚠️ Notes
The Security Group allows SSH & HTTP from 0.0.0.0/0 — use your own IP in production!

Make sure your .pem file has secure permissions: chmod 400.

✅ Destroy Resources
To avoid AWS costs:

bash
Copy
Edit
terraform destroy \
  -var="instance_name=Day-5-EC2-UserData" \
  -var="ami_id=ami-0f918f7e67a3323f0" \
  -var="key_name=terraform-test"
📌 Status
✅ Security Group created

✅ EC2 launched with Ubuntu AMI

✅ Apache installed automatically via User Data

✅ Test page accessible in browser

✅ Resources destroyed when done

