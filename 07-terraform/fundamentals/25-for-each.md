# For Each (Loops)

## Overview

This section introduces the **for_each** meta-argument, which allows Terraform to create multiple resources using a collection of unique values. It explains how `for_each` iterates over maps or sets, how `each.key` and `each.value` access individual resource attributes, and how resources can be provisioned with different configurations from a single resource block.

It also demonstrates how the `for_each` meta-argument integrates with the standard Terraform workflow, from planning and applying infrastructure to viewing resources in the state file and destroying them when no longer required.

---

## For Each (Loops)

**For Each**
A Terraform meta-argument that creates multiple resources by iterating over a map or set, allowing each resource to have its own unique configuration.

### Characteristics of For Each

- **Creates unique resources** – Deploys multiple resources with different configurations from a single resource block.
- **Iterates over collections** – Loops through maps or sets using the `for_each` meta-argument.
- **Uses `each.key`** – Accesses the unique key for naming and tagging resources.
- **Uses `each.value`** – Retrieves the corresponding values, such as instance types and AMI IDs.
- **Supports custom configurations** – Allows every resource to have different attributes while maintaining reusable code.

<p align="center">
  <img src="https://github.com/user-attachments/assets/17a1c64f-0392-40e8-8a52-cdaca991884c" alt="Terraform For Each Example" width="350">
</p>


---

## Key Takeaways

- `for_each` creates multiple resources using maps or sets.
- `each.key` provides the unique identifier for each resource.
- `each.value` accesses the configuration associated with each key.
- `for_each` is best suited for resources requiring different configurations.
- `terraform plan` previews all resources before deployment.
- `terraform state list` displays all managed resources in the Terraform state.
- `terraform destroy` removes every resource created using `for_each`.

---

## Reflection

Understanding the `for_each` meta-argument reinforced how Terraform efficiently provisions multiple resources with unique configurations from a single resource block. Unlike `count`, which creates identical resources, `for_each` enables each resource to have its own attributes while keeping configurations clean, scalable and easy to maintain. This lab also reinforced the Terraform workflow by demonstrating how resources created with `for_each` are planned, applied, tracked in the state file and eventually destroyed.
