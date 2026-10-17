
variable "aws_region" {
  type    = string
  default = "ap-southeast-2"
}

variable "project_name" {
  type    = string
  default = "CloudMart-CICD"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "jenkins_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "key_pair_name" {
  description = "Existing EC2 key pair name in ap-southeast-2"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "Your public IPv4 address with /32"
  type        = string
}

variable "jenkins_allowed_cidr" {
  description = "Your public IPv4 address with /32"
  type        = string
}

variable "root_volume_size" {
  type    = number
  default = 20
}
