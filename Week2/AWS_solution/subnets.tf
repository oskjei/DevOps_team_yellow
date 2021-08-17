resource "aws_subnet" "subnet11" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.0.0/28"
  
  tags = {
    Name = "subnet11"
    tier = "first"
  }
}

resource "aws_subnet" "subnet12" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.0.112/28"
  
  tags = {
    Name = "subnet12"
    tier = "first"
  }
}

resource "aws_subnet" "subnet21" {
  vpc_id = aws_vpc.vpc2.id
  cidr_block = "10.0.1.0/28"
  
  tags = {
    Name = "subnet21"
    tier = "second"
  }
}

resource "aws_subnet" "subnet22" {
  vpc_id = aws_vpc.vpc2.id
  cidr_block = "10.0.1.112/28"
  
  tags = {
    Name = "subnet22"
    tier = "second"
  }
}
