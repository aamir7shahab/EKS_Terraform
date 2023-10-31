# Terraform Settings Block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.23"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region = var.region
}

# Resource Block
resource "aws_instance" "ec2test" {
  ami = var.ami
  instance_type = var.instance_type

  key_name = var.key_pair_name
  tags = {
    Name = var.instance_name_tag
  }
}
