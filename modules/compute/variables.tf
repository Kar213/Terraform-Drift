variable "region" {
  description = "AWS region for EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0c94855ba95c71c99" # Amazon Linux 2 example
}

variable "instance_name" {
  description = "Name tag for EC2 instance"
  type        = string
  default     = "demo-instance"
}
