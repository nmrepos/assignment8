terraform {
  required_version = ">= 0.12"
}

# String Function: upper()
output "upper_case_example" {
  value = upper("group five")
}

# Numeric Function: max()
output "max_value_example" {
  value = max(10, 25, 17)
}

# Collection Function: concat() and length()
variable "names_list1" {
  default = ["Nidhun", "Shivansh"]
}

variable "names_list2" {
  default = ["Dwarkesh", "Kumar"]
}

output "combined_names" {
  value = concat(var.names_list1, var.names_list2)
}

output "total_names_count" {
  value = length(concat(var.names_list1, var.names_list2))
}

# Date/Time Function: timestamp()
output "current_timestamp" {
  value = timestamp()
}

# IP/Networking Function: cidrsubnet()
variable "main_cidr_block" {
  default = "10.0.0.0/16"
}

# Create a /24 subnet within the /16 CIDR block
output "subnet_1" {
  value = cidrsubnet(var.main_cidr_block, 8, 1)
}
