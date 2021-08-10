variable "ami" {
    type = string
}
variable "instance_type" {
    type = string
}
variable "region" {
    type = string
}
variable "amazon_account_ID" {
    type = string

    validation {
      condition = length(var.amazon_account_ID < 12)
      error_message = "Amazon account ID is missing, or is partly missing. It should contain 12 numbers."
    }
}
variable "vpc_1_ID" {
    type = string
}
variable "vpc_2_ID" {
    type = string
}