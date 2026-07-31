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

## Output Variables

**Output variables** display useful information after a Terraform deployment has completed. They are commonly used to expose values such as **resource IDs**, **public IP addresses**, or other important infrastructure details for use by administrators, automation tools, or other Terraform configurations.

<p align="center">
  <img width="650" src="https://github.com/user-attachments/assets/6dfaace9-16da-46fc-a607-6b8742d499ec">
</p>

The output block retrieves and displays the EC2 instance public IP after Terraform finishes applying the configuration.

### Step 1 — Open the Output Values Documentation

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/9e3caf0e-f512-48e0-89b9-416ba5a8d63f"
</p>

Navigate to **Variables and Outputs → Output Values** in the Terraform documentation.

---

### Step 2 — Review the Output Block

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/b29e2990-61e3-4df8-9220-50bd2a334f35">
</p>

Review how output values are declared using an **`output`** block.

```terraform
output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}
```

---

### Step 3 — Create an Output Block

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/7ffb21da-fe87-495e-9a12-1e1d85833747"> 
</p>

Create an output block to expose the EC2 instance ID.

```terraform
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = ""
}
```

---

### Step 4 — Identify the Resource

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/5836f194-6db7-4753-bdc8-48ace383bb16"> 
</p>

Locate the resource type and resource name that will be referenced by the output value.

```terraform
resource "aws_instance" "this" {
```

---

### Step 5 — Reference the Resource Attribute

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/3a61e40d-f92f-474d-9863-dd0e9e1e175c"> 
</p>

Reference the required resource attribute using the format:

```terraform
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}
```

Terraform references resource attributes using:

```text
<resource_type>.<resource_name>.<attribute>
```

---

### Step 6 — Review the Execution Plan

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/75b5a723-4b5e-4f9e-83a4-212bc137c49c">
</p>

Run Terraform to preview the new output value.

```bash
terraform plan
```

Terraform shows that the output will be added without modifying the infrastructure.

```text
Changes to Outputs:
+ instance_id = "..."
```

---

### Step 7 — Apply the Configuration

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/84090fa9-e673-44e9-881c-83ac128dcdd1"> 
</p>

Apply the configuration to display the output value.

```bash
terraform apply
```

After Terraform completes, the configured output is displayed.

```text
Outputs:

instance_id = "i-0572e537ceb16bc5f"
```

---

## Benefits of Variables

- Remove hard-coded values from Terraform configurations.
- Make infrastructure more reusable across environments.
- Improve readability and maintainability.
- Support the **DRY (Don't Repeat Yourself)** principle.
- Allow values to be changed without modifying resource blocks.
- Local variables reduce repetition by centralising values used multiple times.
- Output variables expose useful infrastructure information after deployment.
  
---

## Key Takeaways

- Input variables parameterise Terraform configurations.
- Local variables store reusable values within a Terraform configuration.
- Output variables expose useful information after Terraform has finished applying changes.
- Input variables are referenced using `var.<variable_name>`.
- Local variables are referenced using `local.<local_name>`.
- Resource attributes are referenced using `<resource_type>.<resource_name>.<attribute>`.
- Variables make Infrastructure as Code more reusable and flexible.
- Separating variables from resources improves maintainability.
- Using variables, locals, and outputs reduces duplicated configuration and simplifies automation.
  
---

## Reflection

Terraform variables demonstrated how Infrastructure as Code can become cleaner, more reusable, and easier to maintain. Input variables separate configurable values from infrastructure code, local variables reduce duplication by centralising repeated values, and output variables expose important infrastructure information after deployment for automation and operational use.
