output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.ec2_ssh.id
}

output "public_ip" {
  description = "Public IP for SSH"
  value       = aws_instance.ec2_ssh.public_ip
}
