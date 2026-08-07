# Templates

## Overview

This section introduces the **templatefile** function, which reads a template file and dynamically injects variable values before returning the final content as a string. It explains how `templatefile` keeps Terraform configurations clean by separating static template content from dynamic values supplied during deployment.

It also demonstrates how `templatefile` is commonly used to generate EC2 user data, configuration files and startup scripts with placeholders that are automatically replaced using Terraform variables.

---

## Templates

**Templatefile**  
A Terraform function that reads a template file and replaces placeholders with values supplied by Terraform variables.

### Characteristics of Templatefile

- **Supports dynamic templates** – Replaces placeholders with variable values during deployment.
- **Separates configuration** – Keeps template logic outside Terraform configuration files.
- **Works with variables** – Passes values into templates using key-value mappings.
- **Supports user data** – Commonly used for EC2 startup scripts and configuration files.
- **Improves maintainability** – Makes templates reusable across multiple environments.

<p align="center">
  <img src="https://github.com/user-attachments/assets/1f188ed1-c22c-4e6a-8a7a-f5006c7ce6c3" alt="Terraform Templatefile Example" width="600"> 
</p>

---

## Key Takeaways

- `templatefile` reads template files and returns the rendered content.
- Placeholders are replaced using values supplied through variables.
- It is commonly used for EC2 user data and configuration files.
- Template files keep Terraform configurations clean and reusable.
- Dynamic values can be injected without modifying the template itself.
- `templatefile` improves flexibility when deploying infrastructure across environments.

---

## Reflection

Understanding the `templatefile` function reinforced how Terraform separates configuration templates from deployment logic while supporting dynamic values. I learned how placeholders within template files can be populated using Terraform variables, making user data scripts and configuration files more reusable, maintainable and adaptable across different deployment environments.
