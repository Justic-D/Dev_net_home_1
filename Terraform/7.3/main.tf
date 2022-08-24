provider "aws" {
  region = "eu-central-1"
}

locals {
  web_instance_count_map = {
    stage = 1
    prod = 2
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners   = ["099720109477"]
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

resource "aws_instance" "count" {
  instance_type = "t2.micro"
  ami           = data.aws_ami.ubuntu.id
  count         = local.web_instance_count_map[terraform.workspace]
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name   = "netology_dv${count.index+1}"
    Lesson = "7.3"
  }
}

resource "aws_instance" "for_each" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = each.value.instance_type
  for_each      = terraform.workspace == "prod" ? var.instances_prod : var.instances_stage

  tags = {
    Name   = each.value.name
    Lesson = "7.3"
  }
}