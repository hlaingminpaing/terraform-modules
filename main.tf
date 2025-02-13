module "vpc" {
  source = "./modules/vpc"

  project-name = var.project-name
  environment  = var.environment
  region       = var.region
  vpc_cidr     = var.vpc_cidr

  public_subnet_az1_cidr = var.public_subnet_az1_cidr
  public_subnet_az2_cidr = var.public_subnet_az2_cidr
  private_subnet_az1_cidr = var.private-subnet-az1_cidr
  private_subnet_az2_cidr = var.private-subnet-az2_cidr
}