# Coalesce

## Overview

This section introduces the **coalesce** function, which returns the first argument that is not `null` or an empty string. It explains how `coalesce` provides default values, prioritises multiple value sources, and simplifies Terraform configurations by avoiding unnecessary conditional logic.

It also demonstrates how `coalesce` can be combined with functions such as `lookup` and `try` to safely handle missing values, optional configuration settings and fallback logic within Terraform.

---

## Coalesce

**Coalesce**  
A Terraform collection function that returns the first argument that is not `null` or an empty string.

### Characteristics of Coalesce

- **Provides default values** – Returns a fallback value when variables are empty or `null`.
- **Prioritises multiple sources** – Selects the first available value from multiple arguments.
- **Reduces conditional logic** – Eliminates the need for complex `if-else` statements.
- **Works with other functions** – Commonly combined with `lookup` and `try` for safer configurations.
- **Requires matching types** – All arguments passed to `coalesce` must be of the same data type.


<p align="center">
  <img src="https://github.com/user-attachments/assets/720127e2-0882-4ff6-bb73-899565a5d76f" alt="Terraform Coalesce Example" width="600"> 
</p>


---

## Key Takeaways

- `coalesce` returns the first non-`null` or non-empty value.
- It is commonly used to provide sensible default values.
- All arguments passed to `coalesce` must be the same data type.
- `coalesce` is often combined with `lookup` and `try` to handle missing configuration values safely.
- It simplifies Terraform code by reducing unnecessary conditional logic.
- `coalesce` improves configuration flexibility while maintaining clean, reusable Infrastructure as Code.

---

## Reflection

Understanding the `coalesce` function reinforced how Terraform handles default values and fallback logic without requiring complex conditional statements. I learned how `coalesce` selects the first valid value, making configurations more resilient and easier to maintain. Combining `coalesce` with functions such as `lookup` and `try` provides a robust approach for safely handling optional inputs, missing values and multiple configuration sources. :contentReference[oaicite:0]{index=0}
