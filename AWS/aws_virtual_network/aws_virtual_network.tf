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

resource "aws_vpc" "vpc1"{
  cidr_block = "192.168.1.0/24"

  tags = {
    name = "vpc1"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "192.168.1.0/24"
  
  tags = {
    name = "subnet1"
  }
}

resource "aws_vpc" "vpc2"{
  cidr_block = "192.168.2.0/24"

  tags = {
    name = "vpc2"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc2.id
  cidr_block = "192.168.2.0/24"
  
  tags = {
    name = "subnet1"
  }
}

