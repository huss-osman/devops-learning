# Terraform Destroy

## Overview

This section introduces the **`terraform destroy`** command, which safely removes infrastructure managed by Terraform. Instead of manually deleting cloud resources, Terraform automatically generates a destruction plan, requests confirmation, and removes all managed resources while keeping the Terraform state accurate.

It helps build an understanding of how Terraform manages the complete infrastructure lifecycle, making it essential for **Infrastructure as Code**, **resource lifecycle management**, **cloud automation**, and modern DevOps workflows.

---

## Terraform Destroy

**`terraform destroy`**  
A command that safely destroys all infrastructure managed by the current Terraform configuration.

### Role in Terraform

- Removes managed infrastructure
- Generates a destruction plan
- Requests user confirmation before deletion
- Deletes cloud resources automatically
- Updates the Terraform state file

`terraform destroy` is the opposite of `terraform apply`. Rather than provisioning infrastructure, it removes the resources managed by Terraform in a safe and controlled manner.

---

## Destruction Plan

**Destruction Plan**  
A preview of the infrastructure resources Terraform intends to destroy before any changes are made.

### Role in Terraform

- Reviews planned resource deletion
- Identifies resources that will be destroyed
- Prevents accidental infrastructure removal
- Allows changes to be verified
- Requires confirmation before execution

Before destroying infrastructure, Terraform reads both the configuration and the state file to determine which resources it currently manages. It then generates a destruction plan showing everything that will be removed.

---

## State File Update

**State File Update**  
The process of updating the Terraform state file after infrastructure has been successfully destroyed.

### Role in Terraform

- Removes deleted resources from the state
- Keeps infrastructure tracking accurate
- Prevents stale resource information
- Maintains deployment consistency
- Supports future Terraform operations

After all resources have been destroyed, Terraform updates the state file so it accurately reflects that the managed infrastructure no longer exists.

---

## Terraform Destroy Output

The example below shows the output produced after running the `terraform destroy` command.

<p align="center">
  <img width="600" alt="Terraform Destroy Output" src="https://github.com/user-attachments/assets/2a0c7ca0-67b0-48f4-a92b-b0348e58c2ef" />
</p>

### Refreshing the State

Terraform first refreshes the current state to ensure it has the latest information about the infrastructure before generating the destruction plan.

---

### Destruction Plan

Terraform generates a destruction plan showing every managed resource that will be deleted.

The output displays:

- Resources marked for destruction (`-`)
- Resource configuration details
- A summary of the planned deletions

This allows the proposed changes to be reviewed before any infrastructure is removed.

---

### Destruction Summary

At the bottom of the output, Terraform provides a summary of the planned changes.

```text
Plan: 0 to add, 0 to change, 3 to destroy.
```

This confirms that no new resources will be created or modified and that three managed resources will be destroyed.

---

### Deployment Confirmation

```text
Do you really want to destroy all resources?

Only 'yes' will be accepted to confirm.
```

Before deleting any infrastructure, Terraform requests confirmation from the user. Entering **`yes`** approves the destruction and begins removing the managed resources from the cloud provider.

> [!IMPORTANT]
> Always review the destruction plan before confirming **`terraform destroy`**. Once approved, Terraform permanently deletes all resources managed by the current configuration. Ensure important production resources and data have been backed up before proceeding.

---

## Key Takeaways

- `terraform destroy` safely removes infrastructure managed by Terraform
- Terraform reads the configuration and state file before generating a destruction plan
- The destruction plan shows every resource that will be deleted
- Terraform requests confirmation before removing infrastructure
- The Terraform state file is updated after resources have been successfully destroyed

---

## Reflection

Learning about `terraform destroy` helped me understand how Terraform manages the complete infrastructure lifecycle, from provisioning resources to safely removing them when they are no longer needed. Rather than manually deleting cloud resources, Terraform automates the entire removal process while maintaining consistency.

I also learned that reviewing the destruction plan before confirming the operation is an important safety practice. This helps prevent accidental deletion of valuable infrastructure while ensuring the Terraform state remains accurate after resources have been removed.
