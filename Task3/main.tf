provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  azs = var.azs
}

module "compute" {
  source = "./modules/compute"
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = module.network.public_subnet_id
  vpc_id = module.network.vpc_id
  sg_name = "web_sg"
}

output "instance_public_ip" {
  value = module.compute.public_ip
}