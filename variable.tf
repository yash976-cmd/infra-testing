# ================================
# GLOBAL SETTINGS
# ================================
variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix used for naming AWS resources"
  type        = string
  default     = "aws-2tier-ha"
}

# ================================
# NETWORKING (VPC & SUBNETS)
# ================================
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Public subnets (Web Tier)
variable "public_subnet_1_cidr" {
  description = "CIDR for public subnet in AZ-1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR for public subnet in AZ-2"
  type        = string
  default     = "10.0.2.0/24"
}

# Private subnets (DB Tier)
variable "private_subnet_1_cidr" {
  description = "CIDR for private subnet in AZ-1"
  type        = string
  default     = "10.0.101.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR for private subnet in AZ-2"
  type        = string
  default     = "10.0.102.0/24"
}

# ================================
# WEB TIER (EC2)
# ================================
variable "web_instance_type" {
  description = "EC2 instance type for web servers"
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  description = "EC2 Key Pair name (leave empty if SSH is not needed)"
  type        = string
  default     = ""
}

variable "allow_ssh" {
  description = "Set true to allow SSH access to web servers"
  type        = bool
  default     = false
}

variable "my_ip_cidr" {
  description = "Your public IP in CIDR format for SSH (example: 1.2.3.4/32)"
  type        = string
  default     = "0.0.0.0/0"
}

# ================================
# DATABASE (RDS MySQL)
# ================================
variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_allocated_storage_gb" {
  description = "RDS storage size in GB"
  type        = number
  default     = 20
}

variable "mysql_engine_version" {
  description = "MySQL engine version"
  type        = string
  default     = "8.0"
}

variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}