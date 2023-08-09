provider "aws" {
  # Configuration options
  access_key = ""
  secret_key = "" 
  region     = "ap-south-1"
}

 terraform {   
backend "s3" {
    bucket = "tf-state-s3"
    key    = "terraform.tfstate"
    region = "us-east-1" 
  }
}

resource "aws_instance" "web_tf" {
  ami           = "ami-0ded8326293d3201b"
  instance_type = "t2.micro"
  tags = {
    Name = "backend-firs-tf-instance-aws"
  }
}
