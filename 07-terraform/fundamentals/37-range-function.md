# Range

## Overview

This section introduces the **range** function, which generates a sequence of numbers that can be used to create resources dynamically. It explains how `range` works with `for_each` to iterate over generated values, making it easy to provision multiple similar resources without manually defining each one.

It also demonstrates how `range` can be combined with `for_each` and `each.key` to assign unique identifiers while creating a configurable number of resources from a single Terraform configuration.

---

## Range

**Range**  
A Terraform collection function that generates a sequence of numbers between a specified start and end value.

### Characteristics of Range

- **Generates numeric sequences** – Creates ordered lists of numbers for iteration.
- **Works with `for_each`** – Commonly paired with `for_each` to provision multiple resources.
- **Supports dynamic scaling** – Generates resources based on a configurable numeric value.
- **Provides unique indexes** – Each generated number can be referenced using `each.key`.
- **Reduces repetitive code** – Eliminates the need to manually define multiple similar resources.

<p align="center">
  <img src="https://github.com/user-attachments/assets/19c580cc-99db-442a-8e39-045ba78dfe1e" alt="Terraform Range Function Example" width="600"> 
</p>

---

## Key Takeaways

- `range` generates a sequence of numbers.
- It is commonly used with `for_each` to create multiple resources.
- Generated values can be referenced using `each.key`.
- The number of resources can be controlled through variables.
- `range` simplifies scalable Infrastructure as Code.
- It reduces repetitive resource definitions while maintaining flexibility.

---

## Reflection

Understanding the `range` function reinforced how Terraform dynamically generates collections for resource creation. I learned how `range` works alongside `for_each` to provision multiple resources from a configurable numeric value while assigning unique identifiers to each instance. This approach improves scalability, reduces repetitive code and keeps Infrastructure as Code clean and maintainable.
