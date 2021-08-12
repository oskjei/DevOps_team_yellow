# Defining version.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.0"
    }
  }
}

# Defining provider and region.
provider "aws" {
  region = var.region
}

# Defining resource group 1. AMI is found on AWS dashboard
resource "aws_instance" "resource_group_1" {
  ami = var.ami
  instance_type = var.instance_type
  
  tags = {
    Name = "first_instance"
  }
}

# Defining resource group 2. AMI is found on AWS dashboard
resource "aws_instance" "resource_group_2" {
  ami = var.ami
  instance_type = var.instance_type
  
  tags = {
    Name = "second_instance"
  }
}
