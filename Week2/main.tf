terraform {

  required_version = "~> 1.0.0"

  required_providers {

    aws = {

      version = "3.27"

      source = "hashicorp/aws"

    }

  }

}

provider "aws" {
  region = "eu-north-1"
}

data "aws_vpc" "aws_vpc_id" {
  id = var.vpc_id
}

module "vpc_module" {
  source = ".//vpc"
  cidr_ubuntu = {
    "vpc1" = {
      cidr_block = "192.168.0.0/24"
      Name       = "vpc1"
    }
    "vpc2" = {
      cidr_block = "192.168.1.0/24"
    Name = "vpc2" }
  }
  subnet_ubuntu = {
    "subnet1" = {
      Name       = "subnet1"
      cidr_block = "192.168.0.5/24"
      vpc_id     = data.aws_vpc.aws_vpc_id.id
    }
  }
}

