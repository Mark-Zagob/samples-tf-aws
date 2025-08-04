module "network" {
  #source = "./modules/network"
  source = "git::https://github.com/Mark-Zagob/tf-modules-samples.git//modules/network"
  vpc_cidr = var.vpc_cidr
  avai_zones = data.aws_availability_zones.available.names
  env_deploy = var.env_deploy
  tags = var.tags
  mgmt_subnet = var.mgmt_subnet
  services_subnets = var.services_subnets
  intra_subnets = var.intra_subnets
  enable_natgw = var.enable_natgw
  natgw_per_az = var.natgw_per_az
}