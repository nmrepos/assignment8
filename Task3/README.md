# Terraform Modular Infrastructure Setup

This repository demonstrates a modular and dynamic Terraform configuration to provision an AWS-based infrastructure using best practices.

## Structure

```
terraform/
│
├── main.tf                # Root configuration to invoke modules
├── variables.tf           # Root variables for configuration
│
├── modules/
│   ├── network/           # Handles VPC, Subnets, IGW, Route Tables
│   └── compute/           # Handles Security Groups and EC2 instance
```

## Features

- Modular design using `modules/network` and `modules/compute`
- Dynamic public subnets across multiple AZs using `for_each`
- Security group with dynamic ingress rules using `dynamic` blocks
- Outputs public IP of deployed EC2 instance

## How to Use

1. Clone the repo or unzip the project
2. Navigate to the project root
3. Run the following commands:

```bash
terraform init
terraform plan
terraform apply
```
---
