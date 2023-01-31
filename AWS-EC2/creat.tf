provider "aws" {
  region: "us-west-2"
}

resource "aws_instance" "test_instance" {
  ami	= "testtest"
  instance_type	= "t2.micro"
  tags = {
    Name = "test_instance"
  }
}
