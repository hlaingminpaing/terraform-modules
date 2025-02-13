variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "project-name" {
  description = "Project Name"
  type        = string
  default     = "terraform-project"
}

variable "environment" {
  description = "Deployment Environment"
  type        = string
  default     = "UAT"
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_az1_cidr" {
  description = "Public Subnet AZ1 CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_az2_cidr" {
  description = "Public Subnet AZ2 CIDR"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private-subnet-az1_cidr" {
  description = "Private Subnet AZ1 CIDR"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private-subnet-az2_cidr" {
  description = "Private Subnet AZ2 CIDR"
  type        = string
  default     = "10.0.4.0/24"
}
