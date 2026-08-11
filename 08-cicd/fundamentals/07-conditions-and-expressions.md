# Conditions And Expressions

## Overview

This section explores **conditions and expressions in GitHub Actions** and how they control workflow behaviour based on specific outcomes, values, and workflow states, allowing automated CI/CD processes to make decisions during execution across different pipeline stages.

Conditions determine whether jobs or steps execute, while expressions allow workflows to dynamically access information such as branch names, repository data, event details, workflow results, and GitHub context values throughout automated CI/CD pipeline execution.

---

## Conditions and Expressions

**Conditions and Expressions**  
Conditions and expressions control workflow execution and allow GitHub Actions to evaluate dynamic information when deciding how jobs and steps should run.

### Characteristics of Conditions and Expressions

- **Controls execution** – Determines whether specific workflow jobs or steps should run.
- **Uses conditional logic** – The `if` statement applies conditions to jobs and steps.
- **Supports status functions** – Functions such as `success()` evaluate previous workflow results.
- **Uses dynamic values** – Expressions retrieve information while the workflow is running.
- **Expression syntax** – `${{ }}` evaluates GitHub context values and other workflow information.
- **Improves flexibility** – Allows workflows to respond dynamically to different results, branches, events, and environments.

<p align="center">
<img width="1567" height="585" alt="image" src="https://github.com/user-attachments/assets/b70ec672-b954-4cfc-9f54-2afaf8b1536b" />
</p>

> This example demonstrates how `success()` controls whether a step runs based on the previous workflow result, while `${{ github.ref }}` dynamically retrieves the current Git reference during workflow execution.

---

## Key Takeaways

- **Conditions** determine whether specific jobs or steps execute
- The `if` keyword applies conditional logic within GitHub Actions workflows
- `success()` checks whether previous workflow execution was successful
- **Expressions** allow workflows to use dynamic values during execution
- `${{ }}` is used to evaluate expressions within GitHub Actions
- `github.ref` provides the Git reference associated with the workflow run

---

## Reflection

Learning about conditions and expressions helped me understand how GitHub Actions workflows can make decisions instead of executing every step automatically. Conditions provide control over when steps run, while expressions allow workflows to dynamically use information from the current workflow execution.

Understanding these concepts will help me build more flexible CI/CD pipelines where workflow behaviour can change depending on previous results, branches, events, and other runtime values.
