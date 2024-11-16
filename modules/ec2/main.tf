resource "aws_instance" "ec2" { 
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id[0]
    associate_public_ip_address = true
    key_name = "tf-keypair-sydney"
    tags = {
      Name = "${var.ec2-name}"
    }
}