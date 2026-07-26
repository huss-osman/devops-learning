# IaC with Version Control

## Overview

This section introduces how **Infrastructure as Code (IaC)** integrates with **version control systems** such as Git. Storing infrastructure as code in a version control repository makes it possible to track changes, collaborate with team members, and manage infrastructure more safely.

It helps build an understanding of how Infrastructure as Code is managed in production environments, making version control essential for **Terraform**, **team collaboration**, **change tracking**, and modern DevOps workflows.

---

## IaC with Version Control

**Version Control**  
The practice of storing infrastructure code in a repository so changes can be tracked, reviewed, and managed over time.

### Role in Infrastructure Management

- Tracks every change made to infrastructure code
- Allows previous versions to be restored when needed
- Enables multiple engineers to collaborate on the same infrastructure
- Provides a history of infrastructure changes
- Supports safer deployments through controlled workflows

In production environments, Infrastructure as Code is typically stored in Git repositories where teams collaborate on shared infrastructure. Terraform uses supporting files such as the **state file** and **lock file** to help manage infrastructure consistently while multiple engineers work on the same project.

---

## Key Takeaways

- Infrastructure as Code is commonly stored in **Git** repositories
- Version control enables collaboration between multiple engineers
- Changes can be tracked, reviewed, and rolled back when required
- Terraform uses supporting files such as the **state file** and **lock file** to manage infrastructure
- Version control is a fundamental part of modern **DevOps** and **Infrastructure as Code** workflows

---

## Reflection

Learning how Infrastructure as Code integrates with version control helped me understand that infrastructure should be managed like application code. Rather than making manual changes, every update can be tracked, reviewed, and shared through a version control system.

I also learned that Terraform works alongside Git to support collaboration in production environments, providing a structured and reliable approach to managing infrastructure changes before exploring concepts such as state management and providers.
