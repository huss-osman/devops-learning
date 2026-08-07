# Count

## Overview

This section introduces the **count** meta-argument, which allows Terraform to create multiple identical resources from a single resource block. It explains how `count` reduces repetitive code, how `count.index` uniquely identifies each resource, and how multiple resources can be managed through a simple and reusable configuration.

It also demonstrates how the `count` meta-argument integrates with the standard Terraform workflow, from planning and applying infrastructure to viewing resources in the state file and destroying them when no longer required.

---

## Count

**Count**
A Terraform meta-argument that creates multiple identical resources from a single resource block.

### Characteristics of Count

- **Reduces code duplication** – Eliminates the need to define the same resource multiple times.
- **Creates multiple resources** – Deploys the specified number of identical resources using a single resource block.
- **Uses a unique index** – Each resource is assigned a unique `count.index` value, starting from `0`.
- **Supports dynamic naming** – `count.index` can be used to generate unique resource names and tags.
- **Improves scalability** – Makes it easy to scale infrastructure by adjusting a single value.


<p align="center">
<img width="552" height="332" alt="image" src="https://github.com/user-attachments/assets/054d69ae-0cc2-4d03-b0ff-38334d413891" />
</p>

---

## Key Takeaways

- `count` is a Terraform meta-argument for creating multiple identical resources.
- A single resource block can provision multiple infrastructure resources.
- `count.index` provides a unique identifier for each resource instance.
- `terraform plan` previews all resources that will be created.
- `terraform state list` displays all managed resources in the Terraform state.
- `terraform destroy` removes every resource created using `count`.

---

## Reflection

Understanding the `count` meta-argument reinforced how Terraform simplifies Infrastructure as Code by reducing repetitive resource definitions. Using `count` makes configurations cleaner, easier to maintain, and more scalable while `count.index` provides a simple way to uniquely identify each resource instance. This lab also reinforced the Terraform workflow by demonstrating how resources created with `count` are planned, applied, tracked in the state file and eventually destroyed.
