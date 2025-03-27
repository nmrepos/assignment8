provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_server" {
  count         = 3
  ami           = "ami-0f214d1b3d031dc53"
  instance_type = "t2.micro"

  tags = {
    Name = "Group5_Lab8_Instance_${count.index + 1}"
  }
}
