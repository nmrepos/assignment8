provider "aws" {
  region = "us-east-1"
}

# Minimal VPC (required for SGs)
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "MainVPC"
  }
}

# Variable map of security group names and ports
variable "security_groups_map" {
  default = {
    "web-sg"  = 80
    "ssh-sg"  = 22
    "api-sg"  = 8080
  }
}

# Dynamic security group creation using for_each
resource "aws_security_group" "dynamic_sg" {
  for_each = var.security_groups_map

  name        = each.key
  description = "Allow traffic on port ${each.value}"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = each.value
    to_port     = each.value
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = each.key
  }
}
