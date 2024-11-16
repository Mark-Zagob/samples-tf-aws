variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "subnet_id" {
    type = list(string)
}

variable "ec2-name" {
    type = string
}
