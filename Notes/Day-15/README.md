# Day-15: Provisioners in Terraform

## 📌 Objective
Use Terraform `provisioners` to configure an EC2 instance after creation (e.g., install and start Nginx using `remote-exec`).

---

## 🧱 What We Used

- **Provider:** AWS (`us-east-1`)
- **Resource:** `aws_instance`
- **Provisioner:** `remote-exec`
- **Key Pair:** SSH key-based access (`~/.ssh/id_rsa.pub`)
- **Security Group:** Open SSH (port 22)

---

## 🔧 Files

- `main.tf` — contains all configuration
- `README.md` — you’re reading it!

---

## 🚀 Steps Performed

1. Created a **key pair** from local public SSH key.
2. Created a **security group** to allow SSH access (port 22).
3. Launched a **t2.micro** EC2 instance using Ubuntu AMI.
4. Used a `remote-exec` provisioner to:
   - Update apt packages.
   - Install **Nginx**.
   - Start Nginx service.
5. Output the public IP address of the instance.

---

## ✅ Pre-Requisites

- Terraform installed
- AWS CLI configured
- SSH key pair available at `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`

---

## 💻 Usage

```bash
terraform init
terraform plan
terraform apply
