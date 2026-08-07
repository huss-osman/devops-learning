# List and Map Functions

## Overview

This section introduces the **slice** function, which extracts a portion of a list by specifying a start and end index. It explains how `slice` returns a subset of elements while preserving their original order, making it useful for working with sections of larger collections.

It also demonstrates how `slice` can be used to select subsets of lists, such as the first few environments, subnets or availability zones, without manually defining separate collections.

---

## List and Map Functions

**Slice**  
A Terraform collection function that returns a subset of elements from a list between a specified start index and end index.

### Characteristics of Slice

- **Extracts list subsets** – Returns a selected portion of a list.
- **Uses start and end indexes** – Specifies where the slice begins and ends.
- **End index is exclusive** – Stops before the specified end index.
- **Preserves element order** – Maintains the original sequence of items.
- **Supports reusable configurations** – Simplifies working with subsets of larger collections.

<p align="center">
  <img src="https://github.com/user-attachments/assets/3a2d56b2-ac32-4b68-82c4-4e427ec06b25" alt="Terraform Slice Function Example" width="600">
</p>

---

## Key Takeaways

- `slice` extracts a subset of elements from a list.
- It requires both a start index and an end index.
- The end index is not included in the returned list.
- The order of elements is preserved.
- `slice` simplifies working with subsets of larger collections.
- It is commonly used with lists of environments, subnets and availability zones.

---

## Reflection

Understanding the `slice` function reinforced how Terraform efficiently selects portions of larger collections without manually creating new lists. I learned how start and end indexes define the returned subset, while the exclusive end index provides predictable results. Using `slice` makes Terraform configurations cleaner, more reusable and easier to maintain when working with subsets of infrastructure resources.
