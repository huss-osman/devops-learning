# Local State Files

## Overview

This section introduces **local state files**, the default method Terraform uses to store infrastructure state. It explains where the state file is stored, when a local backend is appropriate, and why it is commonly used for individual learning and small projects.

It also highlights the characteristics of local state files and why they are best suited for single-user environments before introducing remote state management later.

---

## Local State Files

**Local state files**  
The default storage method that saves Terraform's infrastructure state locally within the project directory.

### Characteristics of Local State Files

- **Simple setup** – No additional configuration is required.
- **Stored locally** – The state file remains in the project directory on your machine.
- **Ideal for single-user projects** – Best suited when one person manages the infrastructure.
- **Easy to manage** – Everything is contained within the local project.
- **Suitable for learning and small environments** – Perfect for testing and personal Terraform projects.

---

## Key Takeaways

- Terraform stores state locally by default.
- Local state files require no additional backend configuration.
- They are best suited for individual users and small projects.
- The state file is stored within the project directory.
- Local state keeps infrastructure management simple during development and learning.

---

## Reflection

Understanding local state files reinforced how Terraform tracks infrastructure by default. For personal projects and learning environments, storing state locally provides a straightforward way to manage infrastructure before introducing the additional collaboration and security features offered by remote state backends.
