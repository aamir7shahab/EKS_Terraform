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
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1_install.sh")
  key_name = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.tf-ssh.id, aws_security_group.tf-web.id]
  tags = {
    Name = var.instance_name_tag
  }
}

