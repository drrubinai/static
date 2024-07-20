provider "aws" {
  region = "us-east-2"  # Change to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change to your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance-Irfan"
  }
}
