# data "aws_subnet_ids" "first"{
#     vpc_id = aws_vpc.vpc1.id
#     tags = {
#       tier = "first"
#     }
# }

# data "aws_subnet_ids" "second"{
#     vpc_id = aws_vpc.vpc2.id
#     tags = {
#       tier = "second"
#     }
# }

# resource "aws_instance" "instance_test1" {
#   for_each = data.aws_subnet_ids.first
#   ami           = "ami-02fee912d20d2f3cd"
#   instance_type = "t2.micro"

#   subnet_id = each.value
  
#   tags = {
#     Name = "instance_test1"
#   }
# }

# resource "aws_instance" "instance_test2" {
#   for_each = data.aws_subnet_ids.second
#   ami           = "ami-02fee912d20d2f3cd"
#   instance_type = "t2.micro"

#   subnet_id = each.value
  
#   tags = {
#     Name = "instance_test2"
#   }
# }

resource "aws_instance" "instance_test1" {
  ami           = "ami-02fee912d20d2f3cd"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.subnet11.id
  
  tags = {
    Name = "instance_test1"
  }
}

resource "aws_instance" "instance_test2" {
  ami           = "ami-02fee912d20d2f3cd"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.subnet12.id
  
  tags = {
    Name = "instance_test2"
  }
}

resource "aws_instance" "instance_test3" {
  ami           = "ami-02fee912d20d2f3cd"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.subnet21.id
  
  tags = {
    Name = "instance_test3"
  }
}

resource "aws_instance" "instance_test4" {
  ami           = "ami-02fee912d20d2f3cd"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.subnet22.id
  
  tags = {
    Name = "instance_test4"
  }
}