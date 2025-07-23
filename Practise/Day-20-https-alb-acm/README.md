 ┌───────────────────────────────────────────────────────────────────────────┐
 │                                 Client (User)                            │
 │                           Requests: https://sharukhshaik.org             │
 └───────────────────────────────────────────────────────────────────────────┘
                                      │
                                      ▼
 ┌───────────────────────────────────────────────────────────────────────────┐
 │                            Route 53 (DNS Service)                         │
 │  - Hosted Zone: sharukhshaik.org                                          │
 │  - A Record (Alias) → Application Load Balancer (ALB)                     │
 │  - Validation CNAME → ACM DNS records (for certificate validation)        │
 └───────────────────────────────────────────────────────────────────────────┘
                                      │
                                      ▼
 ┌───────────────────────────────────────────────────────────────────────────┐
 │                   ACM – AWS Certificate Manager (us-east-1)              │
 │  - SSL/TLS Certificate for sharukhshaik.org                               │
 │  - Validated via DNS through Route 53                                     │
 │  - Used by ALB to terminate HTTPS (port 443)                              │
 └───────────────────────────────────────────────────────────────────────────┘
                                      │
                                      ▼
 ┌───────────────────────────────────────────────────────────────────────────┐
 │              Application Load Balancer (public-facing)                   │
 │  - Listens on 443 (HTTPS) and 80 (HTTP - optional)                        │
 │  - Uses ACM certificate for TLS termination                              │
 │  - Routes requests to Target Group (EC2 Instances)                        │
 │  - Associated with 2 public subnets across Availability Zones            │
 └───────────────────────────────────────────────────────────────────────────┘
                                      │
                                      ▼
 ┌───────────────────────────────────────────────────────────────────────────┐
 │                         Target Group (HTTP Port 80)                      │
 │  - Contains EC2 web instances                                            │
 │  - Health Checks enabled (HTTP /, matcher 200-399)                       │
 └───────────────────────────────────────────────────────────────────────────┘
                                      │
                                      ▼
 ┌───────────────────────────────────────────────────────────────────────────┐
 │                             EC2 Instances                                │
 │  - Ubuntu (AMI: ami-08c40ec9ead489470)                                    │
 │  - Apache2 installed via user_data                                        │
 │  - Simple HTML hosted on `/var/www/html/index.html`                      │
 │  - Deployed in Public Subnets with public IP                             │
 │  - Security Group allows HTTP/HTTPS access                               │
 └───────────────────────────────────────────────────────────────────────────┘
