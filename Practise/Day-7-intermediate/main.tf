provider "aws" {
  region = "ap-south-1"
}

module "network" {
  source       = "./modules/network"
  vpc_cidr     = var.vpc_cidr
  env          = var.env
  project_name = var.project_name
}

module "compute" {
  source         = "./modules/compute"
  env            = var.env
  project_name   = var.project_name
  vpc_id         = module.network.vpc_id
  subnet_id      = module.network.subnet_id
  allowed_ports  = var.allowed_ports
  instance_type  = var.instance_type
}
