output "public_ip" {
  description = "Public IP for web access"
  value       = aws_instance.ec2_web.public_ip
}
