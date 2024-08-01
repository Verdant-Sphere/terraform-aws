variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "VPC CIDR Block"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "public_subnet_name" {
  description = "Name of the Public Subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "Name of the Private Subnet"
  type        = string
}

variable "internet_gateway_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "public_route_table_name" {
  description = "Name of the Public Route Table"
  type        = string
}

variable "private_route_table_name" {
  description = "Name of the Private Route Table"
  type        = string
}

variable "natgateway_name" {
  description = "Name of the Nat Gatway"
  type        = string
}

variable "eip_id" {
  description = "Elastic IP Id"
  type        = string
}

variable "public_internet_destination_cidr" {
  description = "Destination CIDR for the Public Internet Route"
  type        = string
  default     = "0.0.0.0/0"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "key_pair_name" {
  description = "AWS Key Pair name"
  type        = string
}

variable "public_server_name" {
  description = "Name of the Public Server"
  type        = string
}

variable "private_server_name" {
  description = "Name of the Private Server"
  type        = string
}


variable "public_sg_name" {
  description = "Name of the Public Security Group"
  type        = string
}

variable "private_sg_name" {
  description = "Name of the Public Security Group"
  type        = string
}