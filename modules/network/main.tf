resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_vpc
    tags = {
      Name = "${var.vpc_name}"
    }
}

resource "aws_subnet" "subnet" {
    count = 3
    vpc_id = aws_vpc.vpc.id
    cidr_block = cidrsubnet("${var.cidr_vpc}",8, count.index)
    map_public_ip_on_launch = "true"
    tags = {
        Name = "subnet-${count.index}"
    }
}
