terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.4.2"
}

provider "aws" {
  region = "us-east-2"

}

resource "aws_instance" "app_server" {
  ami           = "ami-0521a1ab6cb98215d"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

