# Merge

## Overview

This section introduces the **merge** function, which combines multiple maps into a single map. It explains how `merge` simplifies Terraform configurations by consolidating default settings, environment-specific values and custom configurations into one reusable object.

It also demonstrates how `merge` helps manage resource tags efficiently by combining multiple maps, while allowing later maps to override values from earlier ones when duplicate keys exist.

---

## Merge

**Merge**  
A Terraform collection function that combines two or more maps into a single map.

### Characteristics of Merge

- **Combines multiple maps** – Merges two or more maps into one consolidated map.
- **Supports tag management** – Commonly used to combine default, environment and custom resource tags.
- **Overrides duplicate keys** – If duplicate keys exist, the value from the last map takes precedence.
- **Reduces repetition** – Avoids redefining common values across multiple resources.
- **Improves maintainability** – Centralises shared configuration while allowing environment-specific overrides.

<p align="center">
  <img src="https://github.com/user-attachments/assets/fd22d61a-9614-4e29-9896-ffa81d077bff" alt="Terraform Merge Example" width="600">
</p>

---

## Key Takeaways

- `merge` combines multiple maps into a single map.
- It is commonly used to consolidate resource tags.
- Later maps override duplicate keys from earlier maps.
- `merge` reduces repetitive configuration across resources.
- It simplifies environment-specific customisation while maintaining reusable code.
- `merge` improves consistency when applying shared configuration values.

---

## Reflection

Understanding the `merge` function reinforced how Terraform efficiently combines multiple configuration maps into a single reusable object. I learned how `merge` simplifies tag management by bringing together default, environment-specific and custom values while allowing later maps to override duplicate keys. This approach results in cleaner, more maintainable Infrastructure as Code and reduces repetitive configuration across Terraform projects.
