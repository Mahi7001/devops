terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 0.14.3"
}
terraform {
  backend "s3" {
    bucket = "mahesh-bucket24"
    key    = "terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-table"
  }
}


resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
