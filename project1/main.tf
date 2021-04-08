terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
  access_key = "access_key"
  secret_key = "secret_key"
}

resource "aws_instance" "first_server" {
  ami           = "ami-04cb0df199680872e"
  instance_type = "t3.micro"
}