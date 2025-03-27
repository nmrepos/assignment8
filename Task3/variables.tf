variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.0.0/24"]
}

variable "azs" {
  default = ["us-east-1a"]
}

variable "ami" {
  default = "ami-0f214d1b3d031dc53"
}

variable "instance_type" {
  default = "t2.micro"
}