output "vpc_id" {
  value = module.network.vpc_id
}

output "instance_public_ip" {
  value = module.compute.public_ip
}
