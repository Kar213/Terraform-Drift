terraform {
  backend "s3" {
    bucket         = var.backend_bucket
    key            = "network/terraform.tfstate"
    region         = var.region
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "demo_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}
