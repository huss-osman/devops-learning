# Variables

## Overview

This section introduces **Terraform variables**, which allow values to be parameterised instead of hard-coded within Terraform configurations.

It explains why variables are used, how they improve code reusability, and how they support the **DRY (Don't Repeat Yourself)** principle by separating configurable values from infrastructure code.

<p align="center">
  <a href="https://developer.hashicorp.com/terraform/language/values/variables">
    Official Terraform Variables Documentation
  </a>
</p>

---

## Why Use Variables?

Variables make Terraform configurations more flexible by replacing hard-coded values with reusable inputs.

Instead of embedding values such as **instance types**, **AMI IDs**, or **AWS regions** directly into resource blocks, Terraform allows these values to be defined separately and referenced throughout the configuration.

This makes infrastructure easier to maintain, reuse, and update across different environments.

---

## Input Variables

### Resource Configuration

<p align="center">
  <img width="650" src="https://github.com/user-attachments/assets/5eeb4471-04e4-4bb4-8b21-7b2ea67a877e"> 
</p>

The EC2 instance references the AMI using a variable instead of a hard-coded value.

```terraform
resource "aws_instance" "first" {
  instance_type = "t2.micro"
  ami           = var.ami_id

  tags = {
    Name = "HelloWorld"
  }
}
```

### Variable Definition

<p align="center">
  <img width="650" src="https://github.com/user-attachments/assets/b901e362-8098-4521-b838-48873e2c99cd">
</p>

The variable is declared separately and provides the value used by the resource.

```terraform
variable "ami_id" {
  type    = string
  default = "ami-090fa75af13c156b4"
}
```

---

## Local Variables

Unlike input variables, **local variables** are internal to the Terraform configuration. They are assigned once and referenced multiple times throughout the configuration, helping reduce duplication and keep code DRY.

<p align="center">
  <img width="650" src="https://github.com/user-attachments/assets/4bfe57e5-db09-41eb-95b2-88085a72b1c8"> 
</p>

The AMI ID is stored once inside a **`locals`** block and referenced throughout the configuration.

### Step 1 — Open the Local Values Documentation

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/c09e2452-4bf2-4b64-8a8e-4ed039206760"> 
</p>

Navigate to **Variables and Outputs → Local Values** in the Terraform documentation.

---

### Step 2 — Review the Locals Block

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/d9fdb664-19bc-46d0-bb8b-83ea48ca7045">
</p>

Review how local values are declared using a **`locals`** block.

```terraform
locals {
  service_name = "forum"
  owner        = "Community Team"
}
```

---

### Step 3 — Declare a Local Variable

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/f4c4beba-0d2c-47e6-bcc6-5adcf5a09d31"> 
</p>

Declare a local value inside the **`locals`** block.

```terraform
locals {
  instance_ami = "ami-03cc8375791cb8bcf"
}
```

---

### Step 4 — Reference the Local Variable

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/c1ee8eaf-d7c4-4ce6-ace7-6550898e762e">
</p>

Reference the local value within the resource configuration.

```terraform
resource "aws_instance" "this" {
  ami           = local.instance_ami
  instance_type = var.instance_type
}
```

Local variables are referenced using the **`local.<local_name>`** syntax.

---

### Step 5 — Verify the Configuration

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/190e4f41-8651-425d-9ce5-f7b4c68a79bc">
</p>

Run Terraform to verify the configuration.

```bash
terraform plan
```

Terraform confirms the local value has been interpreted correctly.

```text
No changes. Your infrastructure matches the configuration.
```

---

## Benefits of Variables

- Remove hard-coded values from Terraform configurations.
- Make infrastructure more reusable across environments.
- Improve readability and maintainability.
- Support the **DRY (Don't Repeat Yourself)** principle.
- Allow values to be changed without modifying resource blocks.
- Local variables reduce repetition by centralising values used multiple times.
  
---

## Key Takeaways

- Input variables parameterise Terraform configurations.
- Local variables store reusable values within a Terraform configuration.
- Input variables are referenced using `var.<variable_name>`.
- Local variables are referenced using `local.<local_name>`.
- Variables make Infrastructure as Code more reusable and flexible.
- Separating variables from resources improves maintainability.
- Using variables and locals reduces duplicated configuration.
  
---

## Reflection

Variables demonstrated how Terraform configurations can become cleaner and easier to maintain by separating configurable values from infrastructure resources. Rather than repeatedly hard-coding values, variables enable reusable, flexible Infrastructure as Code that can be adapted for different environments with minimal changes.
