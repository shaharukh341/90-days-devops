# Day 16 - Advanced EC2 Setup with EBS and Remote Exec

## Overview
This example demonstrates:
- Creating an EC2 instance with a key pair
- Attaching an additional EBS volume
- Assigning an Elastic IP
- Running provisioning scripts using `remote-exec` and `file`

## Features
✅ Secure SSH with imported key  
✅ Automated provisioning with Nginx  
✅ Custom EBS volume attached  
✅ Elastic IP for persistent access  

## How to Run

1. ✅ Edit `terraform.tfvars` with your key paths.
2. ✅ Run the following:

```bash
terraform init
terraform plan
terraform apply
