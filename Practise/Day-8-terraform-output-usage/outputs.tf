output "instance_id" {
  value = aws_instance.ssh.id
}

output "public_ip" {
  value = aws_instance.test.ssh_ip
}

output "availability_zone" {
  value = aws_instance.ssh.availability_zone
}
