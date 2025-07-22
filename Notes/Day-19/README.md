# 🚀 Day 19 – Deploying EC2 Instances Behind an Application Load Balancer (ALB) using Terraform

This project provisions a basic web infrastructure on AWS using Terraform:

- ✅ 2 EC2 instances running Nginx (via `user_data`)
- ✅ An Application Load Balancer (ALB) that distributes traffic
- ✅ Proper Security Groups and Health Checks
- ✅ Optional: A debug EC2 instance with Elastic IP for SSH access

---

## 📌 Architecture Diagram

[ User ]

↓ (HTTP)

[ Application Load Balancer ]

↓

[ Target Group ]

├── EC2-1 (Nginx)

└── EC2-2 (Nginx)

Internet Gateway + Public Subnets + Route Tables