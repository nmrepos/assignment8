output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = values(aws_subnet.public)[0].id
}