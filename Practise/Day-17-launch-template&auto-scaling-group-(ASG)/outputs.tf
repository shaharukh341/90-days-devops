output "instance_id" {
  value = aws_instance.demo.id
}

output "environment" {
  value = local.env
}
