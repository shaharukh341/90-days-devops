# Day-15: Remote Exec Provisioning in Terraform

## 📌 Objective
Learn how to automate commands on EC2 after launch using the `remote-exec` provisioner with two approaches:

1. Using an existing `.pem` key file (imported manually to AWS beforehand).
2. Generating a `.pem` key with Terraform and using it for SSH provisioning.

---

## ✅ Use Case 1: Using Existing `.pem` File

### 💡 Scenario
You already have an EC2 Key Pair created manually via AWS Console or CLI. You want Terraform to:

- Launch an EC2 instance using this key.
- SSH into it via `remote-exec` and run provisioning commands (e.g., install packages).

### 🗂️ Folder: `day-15-remote-exec-existing-key/`

#### 📁 Structure
