terraform {
  backend "s3" {
    bucket         = var.backend_bucket
    key            = "compute/terraform.tfstate"
    region         = var.region
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
provider "aws" {
  region = var.region
}

resource "aws_instance" "demo_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
