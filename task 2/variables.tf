
variable "aws_region" {
  description = "Region, w którym będą tworzone zasoby"
  type        = string
  default     = "us-east-1" 
}

variable "vpc_cidr" {
  description = "CIDR blok dla VPC"
  type        = string
  default     = "10.0.0.0/16"
}


variable "public_subnet1_cidr" {
  description = "CIDR blok dla pierwszego publicznego subnetu"
  type        = string
  default     = "10.0.2.0/24"
}


variable "public_subnet2_cidr" {
  description = "CIDR blok dla drugiego publicznego subnetu"
  type        = string
  default     = "10.0.1.0/24"
}


variable "private_subnet1_cidr" {
  description = "CIDR blok dla pierwszego prywatnego subnetu"
  type        = string
  default     = "10.0.3.0/24"
}


variable "private_subnet2_cidr" {
  description = "CIDR blok dla drugiego prywatnego subnetu"
  type        = string
  default     = "10.0.4.0/24"
}


variable "instance_type" {
  description = "Typ instancji EC2"
  type        = string
  default     = "t2.micro"  
}


variable "ssh_key_name" {
  description = "Nazwa klucza SSH używanego do logowania na instancje EC2"
  type        = string
  default     = "key-pair"  
}

variable "public_instance_count" {
  description = "Liczba instancji EC2 w publicznych subnetach"
  type        = number
  default     = 2
}


variable "private_instance_count" {
  description = "Liczba instancji EC2 w prywatnych subnetach"
  type        = number
  default     = 2
}

variable "my_ip" {
  description = "Your IP address for SSH access to Bastion host"
  default     = "98.84.52.246/32"  
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  default     = "ami-00f251754ac5da7f0"
}

variable "key_name" {
  description = "Key pair name for SSH access"
  default     = "key-pair"  
}