provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "vpc1"
  }
}

resource "aws_vpc" "vpc2" {
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "vpc2"
  }
}

