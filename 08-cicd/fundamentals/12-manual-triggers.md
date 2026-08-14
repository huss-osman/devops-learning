# Manual Triggers

## Overview

This section explores manual triggers in GitHub Actions and how they allow workflows to be started on demand through the GitHub interface, providing greater control over when specific CI/CD jobs and deployment processes are securely and reliably executed when required.

Manual triggers use `workflow_dispatch` to start workflows manually and collect configurable inputs, making them useful for controlled deployments, maintenance tasks, database operations, and other processes that should only execute when explicitly requested by users.

---

## Manual Triggers

**Manual Triggers**  
Manual triggers allow GitHub Actions workflows to be started manually instead of relying entirely on automatic events such as pushes or pull requests.

### Characteristics of Manual Triggers

- **On-demand execution** – Workflows can be started manually whenever they are required.
- **`workflow_dispatch`** – Enables manual workflow execution within GitHub Actions.
- **Configurable inputs** – Users can provide values before starting a workflow.
- **Input validation** – Inputs can be marked as required and provided with default values.
- **Choice options** – Users can select values from predefined options before execution.
- **Controlled execution** – Provides greater control over when sensitive or operational jobs run.

<p align="center">
<img width="703" height="680" alt="image" src="https://github.com/user-attachments/assets/0bd0e5b0-6642-47d3-8776-27d53088456a" />
</p>

> This example demonstrates a manually triggered workflow using `workflow_dispatch`, where the user can select a Python version from predefined options before starting the GitHub Actions workflow.

---

## Manual Trigger Use Cases

**Manual Trigger Use Cases**  
Manual triggers are useful when CI/CD processes should execute only when deliberately started rather than automatically after every repository change.

### Characteristics of Manual Trigger Use Cases

- **Controlled deployments** – Deployments to staging or production can be started at an appropriate time.
- **Maintenance jobs** – Operational tasks can be executed manually when maintenance is required.
- **Database operations** – Tasks such as database migrations can be triggered on demand.
- **Backup operations** – Database or application backups can be started when required.
- **On-demand jobs** – Workflows that do not require automatic execution can remain manually controlled.
- **User configuration** – Inputs allow users to customise workflow behaviour before execution.

### Example

```yaml
name: Manual CI

on:
  push:
  workflow_dispatch:
    inputs:
      python-version:
        description: "Choose Python version"
        required: true
        default: "3.7"
        type: choice
        options:
          - "3.7"
          - "3.8"
          - "3.9"
