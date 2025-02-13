##Create VPC
resource "aws_vpc" "terraform-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project-name}-${var.environment}-vpc"
  }
}

###create IGW
resource "aws_internet_gateway" "terraform-igw" {
  vpc_id = aws_vpc.terraform-vpc.id

  tags = {
    Name = "${var.project-name}-${var.environment}-igw"
  }
}

# Declare the availablility zone
data "aws_availability_zones" "available_zones" {}


###Create Public Subnet az1
resource "aws_subnet" "public-subnet-AZ1" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = var.public_subnet_az1_cidr
  availability_zone = data.aws_availability_zones.available_zones.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project-name}-${var.environment}-public-subnet-az1"
  }
}

###Create Public Subnet az2
resource "aws_subnet" "public-subnet-AZ2" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = var.public_subnet_az2_cidr
  availability_zone = data.aws_availability_zones.available_zones.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project-name}-${var.environment}-public-subnet-az2"
  }
}

###create route table and add public route
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform-igw.id
  }

  tags = {
    Name = "${var.project-name}-${var.environment}-public-rt"
  }
}

###associate public subnet az1 to public route table
resource "aws_route_table_association" "public_subnet_az1_rt" {
  subnet_id      = aws_subnet.public-subnet-AZ1.id
  route_table_id = aws_route_table.public_route_table.id
}

###associate public subnet az2 to public route table
resource "aws_route_table_association" "public_subnet_az2_rt" {
  subnet_id      = aws_subnet.public-subnet-AZ2.id
  route_table_id = aws_route_table.public_route_table.id
}

###create private subnet az1
resource "aws_subnet" "private-subnet-AZ1" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = var.private_subnet_az1_cidr
  availability_zone = data.aws_availability_zones.available_zones.names[0]

  tags = {
    Name = "${var.project-name}-${var.environment}-private-subnet-az1"
  }
}

###create private subnet az2
resource "aws_subnet" "private-subnet-AZ2" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = var.private_subnet_az2_cidr
  availability_zone = data.aws_availability_zones.available_zones.names[1]

  tags = {
    Name = "${var.project-name}-${var.environment}-private-subnet-az2"
  }
}

