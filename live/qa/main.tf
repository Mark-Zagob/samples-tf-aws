module "vpc" {
  source       = "../../modules/network"
  cidr_vpc   = var.cidr_vpc
  vpc_name     = var.vpc_name
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id # Use the first subnet for the instance
  ec2-name      = "qa"
}
