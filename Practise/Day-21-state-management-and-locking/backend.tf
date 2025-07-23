terraform {
  backend "s3" {
    bucket         = "sharukh-devops-tfstate"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true  # ✅ Enable locking support (auto-managed)
  }
}
