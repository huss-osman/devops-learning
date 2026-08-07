# For Expressions

## Overview

This section introduces **for expressions**, which allow Terraform to iterate over lists or maps and produce a new transformed collection. It explains how `for` expressions simplify data manipulation by generating new values from existing collections without modifying the original data.

It also demonstrates how `for` expressions can be used to transform lists, maps and objects dynamically, making Terraform configurations more flexible, reusable and easier to maintain.

---

## For Expressions

**For Expressions**  
A Terraform expression that iterates over a collection and generates a new list or map by transforming each element.

### Characteristics of For Expressions

- **Transforms collections** – Creates new lists or maps from existing data.
- **Iterates over lists and maps** – Loops through each element in a collection.
- **Supports dynamic values** – Modifies data during iteration using expressions.
- **Reduces repetitive code** – Eliminates the need to manually create transformed collections.
- **Improves maintainability** – Produces reusable and scalable Terraform configurations.

### Example

<p align="center">
  <img src="https://github.com/user-attachments/assets/3827db04-2756-4e8d-990d-a8f982af75d7" alt="Terraform For Expression Example" width="600">
</p>

The example above demonstrates how a `for` expression iterates through a list of AWS regions, appending `-dev` to each value before storing the transformed list in a local variable.

---

## Key Takeaways

- `for` expressions transform existing collections into new lists or maps.
- They can iterate over both lists and maps.
- Each element can be modified during iteration.
- `for` expressions reduce repetitive data transformation logic.
- The original collection remains unchanged.
- They improve flexibility when generating dynamic configuration values.

---

## Reflection

Understanding `for` expressions reinforced how Terraform efficiently transforms collections without duplicating configuration. I learned how lists and maps can be dynamically modified by iterating over each element, making Infrastructure as Code more concise, reusable and easier to maintain. Using `for` expressions simplifies data transformation while supporting scalable and flexible Terraform configurations.
