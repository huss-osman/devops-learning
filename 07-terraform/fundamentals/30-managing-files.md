# File Function

## Overview

This section introduces the **file** function, which reads the contents of a file and returns it as a string. It explains how `file` helps keep Terraform configurations clean by storing large scripts or configuration files separately, rather than embedding them directly into resource definitions.

It also demonstrates how the `file` function is commonly used to provide EC2 user data, allowing shell scripts to be stored independently and automatically passed to instances during deployment.

---

## File Function

**File Function**  
A Terraform function that reads the contents of a file and returns it as a string.

### Characteristics of the File Function

- **Reads external files** – Imports the contents of a file into Terraform configurations.
- **Supports user data** – Commonly used to provide EC2 startup scripts.
- **Keeps code organised** – Stores scripts separately from Terraform configuration files.
- **Works with `path.module`** – References files relative to the current Terraform module.
- **Improves maintainability** – Makes large scripts easier to update and manage independently.

<p align="center">
  <img src="https://github.com/user-attachments/assets/ad213bfb-76e5-4c21-b790-b953480f0a46" alt="Terraform File Function Example" width="600">  
</p>

---

## Key Takeaways

- `file` reads the contents of a file as a string.
- It is commonly used to provide EC2 user data scripts.
- `path.module` helps reference files within the current module.
- Separating scripts from Terraform code improves readability.
- External files are easier to maintain and reuse across projects.
- The `file` function keeps Infrastructure as Code clean and modular.

---

## Reflection

Understanding the `file` function reinforced how Terraform can separate configuration logic from deployment scripts, resulting in cleaner and more maintainable Infrastructure as Code. I learned how external shell scripts can be referenced using `path.module` and automatically supplied as EC2 user data, making Terraform configurations easier to organise, reuse and update.
