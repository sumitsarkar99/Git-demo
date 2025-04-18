provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "demo_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id

  tags = {
    Name = "Terraform-Demo-EC2"
  }
}
