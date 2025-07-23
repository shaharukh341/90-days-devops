🔐 Day 20 – HTTPS Setup with ALB using AWS Certificate Manager (ACM)

🎯 Goal:
Secure your Application Load Balancer (ALB) with HTTPS using a free SSL certificate from ACM, and redirect all HTTP traffic to HTTPS.

📘 Key Concepts:
ACM (AWS Certificate Manager):

Issues free public SSL/TLS certificates

Requires domain validation (email or DNS)

ALB Listener Rules:

Port 80 → redirect to HTTPS (port 443)

Port 443 → forward to Target Group

✅ Terraform Resources You’ll Use:
aws_acm_certificate

aws_acm_certificate_validation

aws_lb_listener

aws_lb_listener_rule

aws_route53_record (if domain hosted in Route 53)

🛠️ Steps Overview:
Request an ACM Certificate (must be in us-east-1 for global use with CloudFront, else use your region)

Validate via DNS (Route 53) or manual DNS

Update ALB Listeners:

Port 80 → HTTP → redirect to HTTPS (443)

Port 443 → HTTPS → forward to Target Group

Add TLS policy to ALB Listener

Access your app at https://your-domain.com

🌐 Prerequisites:
A domain name you own

Ideally hosted in Route 53 for automatic validation

Working ALB + Target Group setup (from Day 19)

🎁 Bonus:
You’ll also learn:

How to force HTTPS-only access

How to apply a modern TLS policy

How to manage certificates via Terraform securely


User → https://yourdomain.com
           │
      [ Route 53 A Record ]
           │
   ┌───── Application Load Balancer ─────┐
   │     HTTPS (443) + HTTP redirect     │
   │         ACM TLS Certificate         │
   └──────┬────────────────────┬─────────┘
      EC2 Instance 1       EC2 Instance 2
        (nginx)               (nginx)
