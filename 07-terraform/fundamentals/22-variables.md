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

---

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

## Benefits of Variables

- Remove hard-coded values from Terraform configurations.
- Make infrastructure more reusable across environments.
- Improve readability and maintainability.
- Support the **DRY (Don't Repeat Yourself)** principle.
- Allow values to be changed without modifying resource blocks.

---

## Key Takeaways

- Variables parameterise Terraform configurations.
- Values can be referenced using the `var.<variable_name>` syntax.
- Variables make Infrastructure as Code more reusable and flexible.
- Separating variables from resources improves maintainability.
- Using variables reduces duplicated configuration.

---

## Reflection

Variables demonstrated how Terraform configurations can become cleaner and easier to maintain by separating configurable values from infrastructure resources. Rather than repeatedly hard-coding values, variables enable reusable, flexible Infrastructure as Code that can be adapted for different environments with minimal changes.
