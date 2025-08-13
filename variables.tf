variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "ssh_key_name" {
  description = "Name of the SSH key pair to use for EC2 (without .pem)"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}