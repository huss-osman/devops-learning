# Concat

## Overview

This section introduces the **concat** function, which combines two or more lists into a single list. It explains how `concat` preserves the order of elements while simplifying the process of joining related collections, making Terraform configurations cleaner and more reusable.

It also demonstrates how `concat` can be used to combine lists such as environment names, subnets, security groups or other collections before passing the resulting list into resources, variables or other Terraform functions.

---

## Concat

**Concat**  
A Terraform collection function that joins two or more lists into a single list.

### Characteristics of Concat

- **Combines multiple lists** – Merges two or more lists into one ordered list.
- **Preserves element order** – Items remain in the same sequence as the original lists.
- **Supports reusable configurations** – Simplifies working with related collections of values.
- **Works with other functions** – Can be combined with functions such as `join` for formatting output.
- **Reduces repetition** – Avoids manually creating larger lists from smaller collections.

<p align="center">
  <img src="https://github.com/user-attachments/assets/a0437841-1bbe-4a22-9ef9-d9301f257b07" alt="Terraform Concat Example" width="600"> 
</p>

---

## Key Takeaways

- `concat` combines two or more lists into a single list.
- The order of elements is preserved during concatenation.
- It is commonly used to combine environment names, subnets or security groups.
- `concat` can be used alongside functions such as `join`.
- It reduces repetitive list definitions and improves maintainability.
- `concat` simplifies Infrastructure as Code by creating reusable list configurations.

---

## Reflection

Understanding the `concat` function reinforced how Terraform efficiently combines multiple lists into a single reusable collection. I learned how `concat` preserves element order while reducing repetitive list definitions, making configurations easier to manage. Combining `concat` with functions such as `join` provides a simple way to format and reuse merged collections throughout Terraform projects.
