terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Defining provider and region.
provider "aws" {
  region = var.region
}
data "aws_vpc" "vpc1" {
  id = "vpc-00a76c56f0609575c"
}
data "aws_vpc" "vpc2" {
  id = "vpc-0f0fd12cb7c8813f3"
}
resource "aws_vpc_peering_connection" "vpc_connection" {
  peer_owner_id = "911709223110"
  peer_vpc_id = data.aws_vpc.vpc1.id
  vpc_id = data.aws_vpc.vpc2.id
  peer_region = "eu-north-1"
tags = {
  name = "vpc1-to-vpc2"
}
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_connection.id
  auto_accept = true

  tags = {

  }
}