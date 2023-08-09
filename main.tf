provider "aws" {
  # Configuration options
  region = "ap-south-1"
}
resource "aws_instance" "web_tf" {
  ami           = "ami-0ded8326293d3201b"
  instance_type = "t2.micro"
  tags = {
    Name = "awspipeline234508"
  }
}
