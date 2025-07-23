output "alb_dns_name" {
  description = "DNS name of the load balancer"
  value       = aws_lb.alb.dns_name
}

output "alb_domain_name" {
  description = "Custom domain pointing to ALB"
  value       = aws_route53_record.alb_dns.name
}

output "certificate_arn" {
  description = "ARN of the ACM certificate"
  value       = aws_acm_certificate.cert.arn
}

output "final_https_url" {
  value = "https://${var.domain_name}"
}