# Input Variables

## Overview

This section introduces **Terraform input variables**, which allow values to be parameterised instead of hard-coded within Terraform configurations.

It covers how to declare input variables, reference them within resource blocks, and improve code reusability by following the **DRY (Don't Repeat Yourself)** principle.

<p align="center">
  <a href="https://developer.hashicorp.com/terraform/language/values/variables">
    Official Terraform Input Variables Documentation
  </a>
</p>

---

## Steps

### Step 1 — Open the Terraform Configuration Language Documentation

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/e795c551-252a-49e7-aa94-9c543eae83e6"> 
</p>

Open the Terraform documentation and navigate to **Configuration Language**.

---

### Step 2 — Open the Input Variables Documentation

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/2abfe8fc-8b5a-4062-8d96-a035833a5c87">

</p>

Expand **Variables and Outputs**, then select **Input Variables**.

---

### Step 3 — Review the Variable Block Example

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/d3b0dd87-4dfb-4177-a956-9d68a3582cb9">
</p>

Review the example showing how a variable is declared using the `variable` block.

```terraform
variable "instance_type" {
  type = string
}
```

---

### Step 4 — Create a `variables.tf` File

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/5eaf2b6a-29fb-4b30-a7a0-271a5da99274"> 
</p>

Create a separate **`variables.tf`** file to store input variables.

> [!NOTE]
> Although variables can be declared in any `.tf` file, using a dedicated `variables.tf` file is considered best practice.

---

### Step 5 — Replace the Hard-Coded Value

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/1bcc72e5-f81f-4c0e-b317-91936f8b5639"> 

</p>

Locate the hard-coded `instance_type` value inside the resource block.

```terraform
instance_type = "t2.micro"
```

---

### Step 6 — Declare the Input Variable

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/7e8797b4-5a23-4b76-92be-9e73f4333b08"> 
</p>

Declare an input variable inside **`variables.tf`**.

```terraform
variable "instance_type" {
  type = string
}
```

---

### Step 7 — Reference the Variable

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/3055dab4-8bc2-405f-9d17-c5084321a48a"> 
</p>

Replace the hard-coded value with a variable reference.

```terraform
instance_type = var.instance_type
```

Terraform variables are referenced using the `var.<variable_name>` syntax.

---

### Step 8 — Run Terraform Plan

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/57ece718-a79d-4a65-bf9f-5c7fec9943cc">
</p>

Run Terraform to supply a value for the input variable.

```bash
terraform plan
```

Terraform prompts for the value because no default has been provided.

```text
var.instance_type
Enter a value:
```

Enter:

```text
t2.micro
```

> [!NOTE]
> Because the variable is already declared as a `string`, enter the value without quotation marks.

---

### Step 9 — Add a Default Value

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/602f2573-2220-4218-98a4-801612ee0f20"> 
</p>

Add a **`default`** argument to the variable declaration.

```terraform
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
```

Terraform now uses the default value automatically, so it no longer prompts for user input.

---

### Step 10 — Verify the Default Value

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/3c6d51b1-6357-4b54-9824-ba6083cd4f98"> 
</p>

Run Terraform again to verify the configuration.

```bash
terraform plan
```

Terraform uses the default value and reports:

```text
No changes. Your infrastructure matches the configuration.
```

---

### Step 11 — Create a `terraform.tfvars` File

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/b9470a81-bad2-44b6-ab59-4191cfe5e6c0">  
</p>

Create a **`terraform.tfvars`** file in the Terraform project directory.

> [!NOTE]
> Using a `terraform.tfvars` file is considered the recommended way to provide input variable values.

---

### Step 12 — Define the Variable Value

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/4a9d1425-de78-442d-b825-b6eba103b642"> 
</p>

Move the variable value into the **`terraform.tfvars`** file.

```terraform
instance_type = "t2.micro"
```

Terraform automatically loads values from `terraform.tfvars` during execution.

---

### Step 13 — Apply the Configuration

<p align="center"> 
  <img width="900" src="https://github.com/user-attachments/assets/ed6a9df1-193d-49a3-8151-ca4588bb806b">
</p>

Apply the Terraform configuration.

```bash
terraform apply
```

Terraform reads the value from **`terraform.tfvars`** and confirms the infrastructure already matches the configuration.

```text
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```

---

## Key Takeaways

- Input variables remove hard-coded values from Terraform configurations.
- Variables are commonly stored in a dedicated **`variables.tf`** file.
- Variables are referenced using the `var.<variable_name>` syntax.
- Default values prevent Terraform from prompting for input.
- **`terraform.tfvars`** is the recommended way to provide variable values.
- Terraform automatically loads `terraform.tfvars` during execution.
- Variables support reusable, flexible, and DRY Infrastructure as Code.

---

## Reflection

Input variables demonstrated how Terraform configurations can become more flexible by separating configurable values from infrastructure code. Using default values and the **`terraform.tfvars`** file provides a cleaner and more maintainable approach to supplying configuration values, making Infrastructure as Code easier to reuse across different environments.
