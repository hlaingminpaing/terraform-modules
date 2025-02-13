output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_az1_cidr" {
  description = "Public Subnet AZ1 ID"
  value       = module.vpc.public_subnet_az1_cidr
}

output "public_subnet_az2_cidr" {
  description = "Public Subnet AZ2 ID"
  value       = module.vpc.public_subnet_az2_cidr
}

output "private_subnet_az1_cidr" {
  description = "Private Subnet AZ1 ID"
  value       = module.vpc.private_subnet_az1_cidr
}

output "private_subnet_az2_cidr" {
  description = "Private Subnet AZ2 ID"
  value       = module.vpc.private_subnet_az2_cidr
}

output "availability_zone_1" {
  description = "Availability Zone 1"
  value       = module.vpc.availability_zone_1
}

output "availability_zone_2" {
  description = "Availability Zone 2"
  value       = module.vpc.availability_zone_2
}