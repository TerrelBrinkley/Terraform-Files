terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      vversion = "~> 4.16"
    }
}
  required_version = ">= 1.20"
}

provider "aws" {
  region = "us-east-2"
  
}

resource "aws_instance" "app_server" {
  ami = ami-02f97949d306b597a
  instance_type = "t2-micro"

  tags = {
    Name = ExampleAppServerInstance
  }
}
