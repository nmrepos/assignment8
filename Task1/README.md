# Terraform Lab - Task 1
Lab: Task 1 - EC2 Instances and Security Groups

## Overview

This lab demonstrates two key Terraform features:

1. Using `count` to provision multiple identical EC2 instances.
2. Using `for_each` to provision multiple security groups with unique configurations based on a map.

## Task 1: Multiple EC2 Instances using `count`

Location: `Task1/count/count.tf`

### Description

This configuration uses the `count` meta-argument to launch three identical EC2 instances using the same AMI and instance type. The instances are tagged with unique names based on the count index.

### How to Run

1. Open terminal and navigate to the `count` directory:
`cd Task1/count`

2. Initialize Terraform:
`terraform init`

3. Preview the resources to be created:
`terraform plan`

4. Apply the configuration:
`terraform apply`

5. Confirm by typing `yes` when prompted.

### How to Destroy

To remove the created resources:
`terraform destroy`

---

## Task 2: Dynamic Security Groups using `for_each`

Location: `Task1/for_each/for_each.tf`

### Description

This configuration uses `for_each` with a map to create multiple security groups. Each group allows traffic on a specific port defined in the map. Security groups are named according to the map key.

### How to Run

1. Navigate to the `for_each` directory:
`cd Task1/for_each`

2. Initialize Terraform:
`terraform init`

3. Preview the changes:
`terraform plan`

4. Apply the configuration:
`terraform apply`

5. Confirm by typing `yes` when prompted.

### How to Destroy

To remove the created security groups:
`terraform destroy`

