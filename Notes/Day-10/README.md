✅ Objective
Provision an EC2 instance in AWS with secure SSH access using Terraform by:

Generating an SSH key pair

Creating a security group for port 22 (SSH)

Launching an EC2 instance (Ubuntu) with this key

Connecting via SSH

🗂️ Files Used

.
├── main.tf               # EC2 instance + SSH key + Security group

├── variables.tf          # Region, AMI, instance type

├── outputs.tf            # Public IP, private key PEM

├── terraform.tfvars      # Variable values (optional)