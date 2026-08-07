# Conditionals

## Overview

This section introduces **conditionals**, which allow Terraform to make decisions based on variable values or resource attributes. It explains how conditional (ternary) expressions enable dynamic infrastructure by selecting different values, creating optional resources and controlling resource behaviour without duplicating code.

It also demonstrates how conditionals can be used with resource attributes, `count`, `locals`, dynamic blocks and nested expressions to build flexible and environment-aware Terraform configurations.

---

## Conditionals

**Conditionals**  
A Terraform expression that evaluates a condition and returns one value if the condition is true, or another value if it is false.

### Characteristics of Conditionals

- **Supports dynamic configuration** – Changes resource behaviour based on variable values.
- **Uses ternary expressions** – Evaluates conditions using `condition ? true_value : false_value`.
- **Controls resource creation** – Can be combined with `count` to create optional resources.
- **Works with locals** – Selects values dynamically before they are referenced by resources.
- **Improves flexibility** – Enables reusable configurations across different environments.

<p align="center">
  <img src="https://github.com/user-attachments/assets/bcb80bca-c6f2-466b-b0cb-6d625760b9b0" alt="Terraform Conditionals Example" width="600"> 
</p>

---

## Key Takeaways

- Conditionals use the ternary operator to evaluate expressions.
- Different values can be selected based on variables or resource attributes.
- Conditionals can be combined with `count` to create optional resources.
- They can also be used with `locals` and dynamic blocks.
- Nested conditionals allow more advanced decision making.
- Conditionals improve code reusability while reducing duplicated configuration.

---

## Reflection

Understanding conditionals reinforced how Terraform can dynamically adapt infrastructure based on different environments and deployment requirements. I learned how ternary expressions simplify decision making by selecting values, creating optional resources and controlling resource behaviour without duplicating code. Combining conditionals with `count`, `locals` and dynamic blocks provides a flexible approach for building reusable and environment-aware Infrastructure as Code.
