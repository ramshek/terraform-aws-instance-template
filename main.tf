terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    "Name" = var.tag
  }
}