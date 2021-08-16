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

resource "aws_vpc" "vpc_ubuntu" {
  for_each = var.cidr_ubuntu
  tags = {Name=each.value.Name}
  cidr_block = each.value.cidr_block
}

resource "aws_subnet" "subnet_ubuntu" {
  for_each = var.subnet_ubuntu
  tags = {Name=each.value.Name}
  cidr_block = each.value.cidr_block
  vpc_id = aws_vpc.vpc_ubuntu.id
}
