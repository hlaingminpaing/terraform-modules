#export the region
output "region" {
  description = "description"
  value       = var.region
}

#export the project name
output "project-name" {
  description = "description"
  value       = var.project-name
}

#export the evnironment
output "environment" {
  description = "description"
  value       = var.environment
}

#export the vpc id
output "vpc_id" {
  description = "description"
  value       = aws_vpc.terraform-vpc
}

output "vpc_cidr" {
  description = "description"
  value       = aws_vpc.terraform-vpc
}

#export IGW
output "aws_internet_gateway" {
  description = "description"
  value       = aws_internet_gateway.terraform-igw
}

##export public subnet az1
output "public_subnet_az1_cidr" {
  description = "description"
  value       = aws_subnet.public-subnet-AZ1
}

##export public subnet az2
output "public_subnet_az2_cidr" {
  description = "description"
  value       = aws_subnet.public-subnet-AZ2
}

##export private subnet az1
output "private_subnet_az1_cidr" {
  description = "description"
  value       = aws_subnet.private-subnet-AZ1
}

##export private subnet az2
output "private_subnet_az2_cidr" {
  description = "description"
  value       = aws_subnet.private-subnet-AZ2
}

output "availability_zone_1" {
  description = "description"
  value       = data.aws_availability_zones.available_zones.names[0]
}


output "availability_zone_2" {
  description = "description"
  value       = data.aws_availability_zones.available_zones.names[1]
}
