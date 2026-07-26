# Terraform Plan

## Overview

This section introduces the **`terraform plan`** command, which previews the infrastructure changes Terraform will make before they are applied. It compares the desired infrastructure defined in the Terraform configuration with the current infrastructure recorded in the Terraform state file, allowing changes to be reviewed safely before deployment.

It helps build an understanding of how Terraform validates infrastructure changes, making it essential for **Infrastructure as Code**, **change management**, **cloud automation**, and modern DevOps workflows.

---

## Terraform Plan

**`terraform plan`**  
A command that previews the infrastructure changes Terraform will make without applying them.

### Role in Terraform

- Compares the desired state with the current state
- Generates an execution plan
- Shows resources that will be created, modified, or destroyed
- Allows infrastructure changes to be reviewed safely
- Helps prevent unintended deployments

Terraform analyzes the infrastructure defined in the configuration files and compares it with the infrastructure recorded in the Terraform state file. It then generates an execution plan showing exactly what actions are required to achieve the desired state.

---

## Desired State vs Current State

**Desired State (`.tf` files)**  
The desired infrastructure defined in the Terraform configuration.

### Role in Terraform Plan

- Defines the intended infrastructure
- Specifies resources and their configuration
- Acts as the deployment target
- Is compared against the current state
- Determines what changes are required

Terraform reads the configuration files to understand the infrastructure you want to deploy.

---

**Current State (`terraform.tfstate`)**  
The infrastructure currently managed and tracked by Terraform.

### Role in Terraform Plan

- Represents existing infrastructure
- Tracks deployed resources
- Enables change detection
- Prevents unnecessary resource recreation
- Supports idempotent deployments

Terraform compares the current state with the desired state to determine the exact infrastructure changes required.

---

## Terraform Plan Output

The example below shows the output produced after running the `terraform plan` command.

<p align="center">
  <img width="600" alt="Terraform Plan Output" src="https://github.com/user-attachments/assets/79f9377f-713d-43ce-8742-2dafa7a28eab" />
</p>

### Resource Actions

Terraform displays symbols that indicate the action it will perform for each resource.

**`+` Create**

- A new resource will be created.
- In the example, an **Amazon EC2 instance** will be provisioned.

---

**`~` Update In-Place**

- An existing resource will be modified.
- In the example, an **AWS Security Group** is updated by changing the allowed port from **80** to **443**.

---

**`-` Destroy**

- An existing resource will be deleted.
- In the example, an **Amazon S3 bucket** will be removed.

> [!NOTE]
> Always pay close attention to resources marked for destruction, particularly production resources such as databases, storage buckets, and networking components.

---

### Plan Summary

At the bottom of the output, Terraform provides a summary of all planned changes.

```text
Plan: 1 to add, 1 to change, 1 to destroy.
```

This summary provides a quick overview of the deployment and helps verify that the planned changes match your expectations before applying them.

> [!IMPORTANT]
> Always review the output of **`terraform plan`** before running **`terraform apply`**. Carefully check the resources being created, modified, or destroyed—especially any resources marked for deletion. If the plan does not match your intended changes, investigate and correct the configuration before proceeding.

---

## Key Takeaways

- `terraform plan` previews infrastructure changes without applying them
- Terraform compares the desired state with the current state
- The plan identifies resources that will be created, modified, or destroyed
- Resource action symbols (`+`, `~`, `-`) indicate the type of change
- Always review the plan summary before applying infrastructure changes

---

## Reflection

Learning about `terraform plan` helped me understand the importance of validating infrastructure changes before deployment. Rather than applying changes immediately, Terraform generates a detailed execution plan that shows exactly how the infrastructure will be affected.

I also learned that reviewing the execution plan is a critical security practice. Understanding which resources will be created, modified, or destroyed helps prevent accidental changes and provides confidence before deploying infrastructure to production environments.
