provider "aws" {
  access_key = "AKIAQCSASBHJ4P2F37FI"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "UdacityT2" {
  count                  = "4"
  ami                    = "ami-0323c3dd2da7fb37d"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0b9a7b7366ccba54d"]
  subnet_id              = "subnet-0717dce702359fd23"
  tags = {
    Name = "Udacity T2"
  }
}

resource "aws_instance" "UdacityM4" {
  count                  = "2"
  ami                    = "ami-0323c3dd2da7fb37d"
  instance_type          = "m4.large"
  vpc_security_group_ids = ["sg-0b9a7b7366ccba54d"]
  subnet_id              = "subnet-0717dce702359fd23"
  tags = {
    Name = "Udacity M4"
  }
}