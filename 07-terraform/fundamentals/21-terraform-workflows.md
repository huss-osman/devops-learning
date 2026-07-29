# Terraform Workflow

## Overview

This section introduces the **Terraform workflow**, covering the sequence of commands used to provision, manage, and remove infrastructure using Terraform.

It explains the purpose of each core command, including initialising the working directory, validating configuration files, reviewing execution plans, applying infrastructure changes, and destroying Terraform-managed resources.

---

## Workflow

### Step 1 — Initialise the Working Directory

```bash
terraform init
```

Initialises the Terraform working directory by downloading the required provider plugins and configuring the backend for the Terraform state file.

> [!NOTE]
> This is the first command that should be run after creating or modifying a Terraform configuration.

---

### Step 2 — Validate the Configuration

```bash
terraform validate
```

Checks that the Terraform configuration files are syntactically correct and internally consistent before creating an execution plan.

---

### Step 3 — Review the Execution Plan

```bash
terraform plan
```

Generates an execution plan by comparing the current infrastructure state with the desired state defined in the Terraform configuration files.

Terraform displays the actions required to make the infrastructure match the configuration without applying any changes.

---

### Step 4 — Apply the Changes

```bash
terraform apply
```

Creates, updates, or deletes infrastructure to achieve the desired state defined in the Terraform configuration.

By default, Terraform generates an execution plan and requests confirmation before making any infrastructure changes.

---

### Step 5 — Destroy the Infrastructure

```bash
terraform destroy
```

Removes all infrastructure managed by Terraform after requesting confirmation.

This provides a simple way to clean up infrastructure without manually deleting individual resources.

---

## Workflow Summary

<p align="center">
  <img width="1000" src="https://github.com/user-attachments/assets/ecc692c8-ba51-4bf8-9c04-5d1a6729394e"> 
</p>

The Terraform workflow follows a structured sequence of commands: **init**, **validate**, **plan**, **apply**, and **destroy**. Each command performs a specific role in the infrastructure lifecycle, from initialising the working directory to provisioning, managing, and removing infrastructure.

---

## Key Takeaways

- `terraform init` initialises the working directory, downloads providers, and configures the backend.
- `terraform validate` checks Terraform configuration syntax and consistency.
- `terraform plan` compares the current state with the desired state and generates an execution plan.
- `terraform apply` executes the planned infrastructure changes.
- `terraform destroy` removes Terraform-managed infrastructure.

---

## Reflection

Understanding the Terraform workflow provides a structured approach to Infrastructure as Code. Following the sequence of **init**, **validate**, **plan**, **apply**, and **destroy** helps ensure infrastructure changes are reviewed before deployment, reduces configuration errors, and simplifies infrastructure lifecycle management.
