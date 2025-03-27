# PROG8830: Practical Lab 8 - Group 5 Submission

---


## Folder Structure

```
.
├── task1/     # Task 1: Loops (count and for_each)
├── task2/     # Task 2: Built-in Functions
├── task3/     # Task 3: Modularization and Advanced Expressions
└── MAIN_README.md
```

---

## Task 1: Using Terraform Loops

**Purpose:**  
To demonstrate the use of both `count` and `for_each` constructs in provisioning infrastructure.

### Implementations:
- **count** used to create multiple identical EC2 instances.
- **for_each** used to create uniquely configured security groups based on a map of names and ports.

### Key Concepts:
- `count.index` for dynamic naming
- `for_each` with maps to iterate over named resources

---

## Task 2: Applying Functions in Terraform

**Purpose:**  
To practice Terraform built-in functions for transforming data and dynamically configuring infrastructure.

### Functions Used:
- **String:** `upper`, `lower`
- **Numeric:** `min`, `max`
- **Collection:** `concat`, `length`
- **IP/Networking:** `cidrsubnet`

### Key Concepts:
- Chaining functions for powerful expressions
- Dynamically generating resource names and subnet CIDRs

---

## Task 3: Enhancing Terraform Configurations

**Purpose:**  
To refactor and modularize Terraform infrastructure using advanced expressions.

### Key Concepts:
- Clean separation of concerns
- Reusable components across environments
- Enhanced scalability and maintainability

---

## How to Run

Each task is self-contained:

```bash
cd task1  # or task2, task3
terraform init
terraform plan
terraform apply
```
---

## Lessons Learned

- **count vs for_each:**
  - `count` is useful for identical resources.
  - `for_each` is ideal for uniquely configured resources.
- **Functions Enhance IaC:**
  - Enable data transformation and dynamic behavior.
  - Simplify complex logic and reduce hardcoding.
- **Modularization:**
  - Encourages reusable and maintainable code.
  - Makes it easier to manage large infrastructure.

---
