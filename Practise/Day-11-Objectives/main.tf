provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_name = "Day11Instance"
  instance_type = "t2.micro"
  ami_id        = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS (us-east-1)
}
