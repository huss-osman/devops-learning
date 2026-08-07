# Dynamic Blocks

## Overview

This section introduces **dynamic blocks**, which allow Terraform to generate nested resource blocks automatically by iterating over a collection. It explains how dynamic blocks eliminate repetitive configuration by creating multiple sub-blocks, such as security group ingress rules, from a single reusable definition.

It also demonstrates how dynamic blocks work with `for_each` to dynamically generate nested configuration, making Terraform code cleaner, more scalable and easier to maintain across changing infrastructure requirements.

---

## Dynamic Blocks

**Dynamic Blocks**  
A Terraform feature that generates nested resource blocks dynamically by iterating over a collection of values.

### Characteristics of Dynamic Blocks

- **Generates nested blocks** – Creates multiple sub-blocks from a single configuration.
- **Uses `for_each`** – Iterates over collections to generate dynamic content.
- **Reduces repetitive code** – Eliminates the need to duplicate similar nested blocks.
- **Supports flexible configuration** – Makes it easy to add or remove values without changing resource definitions.
- **Improves maintainability** – Keeps Terraform configurations clean, reusable and scalable.

<p align="center">
  <img src="https://github.com/user-attachments/assets/1a0cc08d-1c44-47b4-8f36-2b2706a9d571" alt="Terraform Dynamic Blocks Example" width="600"> 
</p>

---

## Key Takeaways

- Dynamic blocks generate nested resource blocks automatically.
- They commonly use `for_each` to iterate over collections.
- They eliminate repetitive nested configuration.
- Dynamic blocks are useful for security group rules and similar resources.
- Adding or removing values automatically updates generated blocks.
- Dynamic blocks improve scalability and maintainability in Terraform configurations.

---

## Reflection

Understanding dynamic blocks reinforced how Terraform can dynamically generate nested resource configuration without duplicating code. I learned how combining dynamic blocks with `for_each` creates flexible and reusable Infrastructure as Code, making it easier to manage resources such as security group rules while keeping Terraform configurations clean, scalable and easy to maintain.
