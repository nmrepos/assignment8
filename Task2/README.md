# Task 2: Applying Functions in Terraform
 
Group: Group Five  
Lab: Terraform Functions Demo

## Overview

This Terraform configuration demonstrates the use of **built-in Terraform functions** across multiple categories:

- String functions
- Numeric functions
- Collection functions
- Date/Time functions
- IP/Networking functions

The outputs will display processed values using these functions when you run `terraform apply`.

---

## How to Run

1. Ensure you have Terraform installed. You can verify by running:
   ```
   terraform -v
   ```

2. Set up a working directory (e.g., `Task2`) and save the configuration in a file named `functions_demo.tf`.

3. Open your terminal, navigate to the folder:
   ```
   cd Task2
   ```

4. Initialize Terraform:
   ```
   terraform init
   ```

5. Apply the configuration:
   ```
   terraform apply
   ```

6. Type `yes` to confirm. Terraform will display the outputs of the functions.

---

## Functionality Explained

### 1. String Function: `upper()`
```
output "upper_case_example" {
  value = upper("group five")
}
```
- Converts the string `"group five"` to uppercase: `GROUP FIVE`

### 2. Numeric Function: `max()`
```
output "max_value_example" {
  value = max(10, 25, 17)
}
```
- Finds the largest number among the inputs: `25`

### 3. Collection Functions: `concat()` and `length()`
```
variable "names_list1" {
  default = ["Nidhun", "Shivansh"]
}

variable "names_list2" {
  default = ["Dwarkesh", "Kumar"]
}
```
- `concat()` merges the two lists into one:
  ```
  ["Nidhun", "Shivansh", "Dwarkesh", "Kumar"]
  ```

- `length()` returns the total number of elements in the combined list: `4`

### 4. Date/Time Function: `timestamp()`
```
output "current_timestamp" {
  value = timestamp()
}
```
- Returns the current UTC timestamp at the time of execution, e.g., `2025-03-26T14:00:00Z`

### 5. IP/Networking Function: `cidrsubnet()`
```
variable "main_cidr_block" {
  default = "10.0.0.0/16"
}

output "subnet_1" {
  value = cidrsubnet(var.main_cidr_block, 8, 1)
}
```
- Splits the base CIDR (`10.0.0.0/16`) into smaller subnets.
- Returns the second subnet in the /24 range: `10.0.1.0/24`

---
