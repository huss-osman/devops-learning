# YAML Syntax

## Overview

YAML stands for **YAML Ain't Markup Language** and is a human-readable data serialization standard commonly used for configuration files. It provides a simple way to structure data using concepts such as **key-value pairs, lists, and nested data structures**.

YAML is widely used throughout DevOps, including **CI/CD pipelines, GitHub Actions, and Kubernetes**. Understanding YAML syntax is important because CI/CD workflows are defined through structured configuration files that automation tools can read and execute.

---

## Key-Value Pairs

**Key-Value Pairs**  
Key-value pairs are the fundamental building blocks of YAML, where a key identifies a piece of data and the value stores its associated information.

### Characteristics of Key-Value Pairs

- **Basic structure** – Forms the foundation of YAML configuration files.
- **Key and value** – Each key is associated with a specific value.
- **Colon syntax** – A colon separates the key from its value.
- **Human-readable** – Configuration values can be easily understood and modified.
- **Configuration focused** – Commonly used to define settings within YAML files.

### Example

```yaml
name: Osman
age: 19
role: DevOps Engineer
```

This example demonstrates simple YAML key-value pairs where `name`, `age`, and `role` are keys associated with their respective values.

---

## Lists

**Lists**  
Lists are sequences of items in YAML that allow multiple related values to be grouped together under a single key.

### Characteristics of Lists

- **Sequence of items** – Stores multiple related values together.
- **Dash syntax** – Each list item begins with a dash followed by a space.
- **Ordered structure** – Items are represented sequentially within the configuration.
- **Easy to read** – Multiple values can be clearly organised under one key.
- **Reusable structure** – Commonly used when configuration requires multiple related items.

### Example

```yaml
tools:
  - Git
  - Docker
  - Terraform
  - Kubernetes
```

This example demonstrates a YAML list containing multiple DevOps tools grouped beneath the `tools` key.

---

## Nested Data Structures

**Nested Data Structures**  
Nested data structures allow YAML elements to be placed inside other elements using indentation to represent relationships between parent and child values.

### Characteristics of Nested Data Structures

- **Supports nesting** – Elements can contain other YAML elements.
- **Uses indentation** – Indentation determines the structure and hierarchy of the data.
- **Parent-child structure** – Related configuration can be organised beneath a parent element.
- **Two-space indentation** – Two spaces can be used to clearly indent nested elements.
- **Complex configuration** – Enables larger configuration files to represent structured relationships.

### Example

```yaml
developer:
  name: Osman
  tools:
    - Git
    - Docker
    - Terraform
```

This example demonstrates nested YAML where `name` and `tools` are placed beneath the `developer` parent element using indentation.

---

## Key Takeaways

- **YAML** stands for YAML Ain't Markup Language
- YAML is a human-readable data serialization standard commonly used for configuration files
- **Key-value pairs** form the fundamental building blocks of YAML
- **Lists** represent sequences of items using a dash followed by a space
- **Nested data structures** use indentation to represent parent-child relationships
- YAML is widely used across DevOps technologies such as **CI/CD, GitHub Actions, and Kubernetes**

---

## Reflection

Learning YAML syntax helped me understand how configuration data is structured before using it to build CI/CD pipelines and workflows. Understanding key-value pairs, lists, and nested data structures gives me the foundation needed to read and create YAML configuration files correctly.

I also learned how important indentation and structure are when working with YAML. These fundamentals will help me understand GitHub Actions workflows more clearly and provide a foundation for other DevOps technologies such as Kubernetes that also rely heavily on YAML configuration.
