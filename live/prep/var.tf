variable "aws_profile" {
  description = "The AWS profile that we're going to use"
  type        = string
  #default = "default"
}

variable "aws_region" {
  description = "The AWS profile that we're going to use"
  type        = string
  #default = "ap-southeast-2"
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "cidr_vpc" {
    type = string
}

variable "vpc_name" {
    type = string
}