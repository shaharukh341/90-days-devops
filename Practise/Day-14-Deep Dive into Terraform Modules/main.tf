provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  name          = "Day14-EC2"
}
