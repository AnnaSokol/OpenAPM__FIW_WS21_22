#Singapore regions

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-central-1"
}

variable "aws_availability_zone" {
  description = "AWS availabitiy zone to launch servers."
  default     = "eu-central-1a"
}

variable "aws_instance_type" {
  description = "AWS Instance type"
  default     = "t3.micro"
}


variable "aws_public_key_name" {
  default = "prometheus_aws_rsa_htw"
}

variable "prometheus_access_name" {
 default = "prometheus_ec2_access"
}

# Ubuntu Server 18.04 LTS (HVM), SSD Volume Type
variable "aws_amis" {
  default = {
     eu-central-1 = "ami-0a49b025fffbbdac6"
  }
}

variable "name" {
  description = "Infrastructure name"
  default = "Promethus_Server"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  default = "11.0.0.0/16"
}

variable "prometheus_server_subnet_cidr1" {
  description = "Promethus Server Subnet CIDR"
  default = "11.0.1.0/24"
}

variable "env" {
  description = "Environment"
  default = "Prod"
}