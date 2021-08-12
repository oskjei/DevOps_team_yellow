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
# Using data to referrance. The VPC ID can be found in the AWS portal. Tagging must be the same as the tag in other folders when it comes to data.
data "aws_vpc" "vpc1" {
  id = var.vpc_1_ID
}
data "aws_vpc" "vpc2" {
  id = var.vpc_2_ID
}
# Creating peering connection.
resource "aws_vpc_peering_connection" "vpc_connection" {
  peer_owner_id = var.amazon_account_ID
  peer_vpc_id = data.aws_vpc.vpc1.id
  vpc_id = data.aws_vpc.vpc2.id
  peer_region = var.region
tags = {
  Name = "VPC1-to-VPC2"
}
# Creating peering connection acceptor.
}
resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_connection.id
  auto_accept = true

  tags = {
    Name = "Peer_accepter"
  }
}

