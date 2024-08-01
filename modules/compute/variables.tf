variable "public_sg_id" {
  description = "Id of the Public Security Group"
  type        = string
}

variable "private_sg_id" {
  description = "Id of the Public Security Group"
  type        = string
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

variable "public_subnet_id" {
  description = "ID of the Public Subnet"
  type        = string
}


variable "private_subnet_id" {
  description = "ID of the Public Subnet"
  type        = string
}
