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

## Key Takeaways

- Input variables make Terraform configurations reusable and easier to maintain.
- Variables remove hard-coded values from configuration files.
- A dedicated `variables.tf` file is considered best practice.
- Variables are referenced using the `var.<variable_name>` syntax.
- Variables support the **DRY (Don't Repeat Yourself)** principle.

---

## Reflection

Input variables demonstrated how Terraform configurations can become more flexible by separating configurable values from infrastructure code. Replacing hard-coded values with variables improves readability, encourages code reuse, and simplifies managing different environments without modifying the core configuration.
