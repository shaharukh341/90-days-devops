locals {
  env         = var.is_production ? "prod" : "dev"
  instance_tag = "${var.project}-${local.env}"
}
