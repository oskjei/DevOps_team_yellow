variable "cidr_ubuntu" {
  type = map(object({
      cidr_block = string
      Name = string

  }))
}

variable "subnet_ubuntu" {
  type = map(object({
      cidr_block = string
      vpc_id = string
      Name = string

  }))
}

