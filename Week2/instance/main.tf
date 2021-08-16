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

resource "aws_instance" "ubuntu" {
  ami = "ami-0ff338189efb7ed37"
  instance_type = "t3.nano"
  count = 4

  tags = {
    Name = "ubuntu ${count.index}"
  }
}