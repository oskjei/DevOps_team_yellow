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
# Creating Virtual Private Cloud 1.
resource "aws_vpc" "vpc1"{
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "vpc1"
  }
}
# Creating subnet 1.
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "192.168.1.0/24"
  
  tags = {
    Name = "subnet1"
  }
}
# Creating Virtual Private Cloud 2.
resource "aws_vpc" "vpc2"{
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "vpc2"
  }
}
# Creating subnet 2
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc2.id
  cidr_block = "192.168.2.0/24"
  
  tags = {
    Name = "subnet2"
  }
}

