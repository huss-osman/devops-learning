# CI/CD Pipelines

## Overview

CI/CD pipelines are automated workflows that define how code moves through stages such as **building, testing, validation, and deployment**. In GitHub Actions, these pipelines are called **workflows** and are defined using YAML configuration files.

Understanding pipelines is important because they form the foundation of CI/CD automation. Concepts such as **workflow syntax, events, jobs, and steps** determine when automation runs, what work is performed, and how individual tasks are executed within a pipeline.

---

## Workflows

**Workflows**  
A workflow is an automated process in GitHub Actions that defines the jobs and steps executed when specific events occur.

### Characteristics of Workflows

- **Pipeline automation** – Defines an automated CI/CD process.
- **YAML configuration** – Workflows are written using YAML syntax.
- **Event driven** – Workflows can execute when specific repository events occur.
- **Contains jobs** – Groups related automation tasks into jobs.
- **Contains steps** – Jobs contain individual steps that perform specific actions.

### Example

```yaml
name: CI Pipeline

on:
  push:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
```

This example demonstrates a basic GitHub Actions workflow that runs when code is pushed to the repository.

---

## Workflow Structure

**Workflow Structure**  
Workflow structure defines how the different components of a GitHub Actions pipeline are organised within a YAML file.

### Characteristics of Workflow Structure

- **Events** – Define when the workflow should run.
- **Jobs** – Define groups of work performed by the workflow.
- **Steps** – Define individual tasks executed within a job.
- **Runners** – Provide the environment where jobs execute.
- **Actions** – Reusable components that perform specific workflow tasks.

### Example

```yaml
name: Simple CI

on:
  push:

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Run tests
        run: echo "Running tests"
```

This example shows how an **event, job, runner, and steps** combine to form the structure of a simple CI workflow.

---

## Simple CI Pipeline

**Simple CI Pipeline**  
A simple CI pipeline automatically performs checks when code changes are pushed to a repository.

### Characteristics of a Simple CI Pipeline

- **Triggered by changes** – Runs automatically when configured repository events occur.
- **Automates checks** – Performs build, test, or validation tasks automatically.
- **Provides feedback** – Shows whether pipeline execution succeeds or fails.
- **Repeatable process** – Runs the same workflow consistently for each trigger.
- **Reduces manual work** – Removes the need to repeatedly perform checks manually.

### Example

A basic CI pipeline can follow this flow:

```text
Code Change
    ↓
Push to Repository
    ↓
Workflow Triggered
    ↓
Build
    ↓
Test
    ↓
Pipeline Result
```

This demonstrates how a code change can automatically trigger a workflow that validates the application before further stages of the software delivery process.

---

## Hands-On Lab

The pipeline concepts covered here are applied practically in the following lab:

### **[Building a Simple CI Pipeline](../labs/01-building-a-simple-ci-pipeline.md)**

Build a basic GitHub Actions CI pipeline and apply workflow concepts through hands-on automation.

---

## Key Takeaways

- GitHub Actions **workflows** are pipelines used to automate software development processes
- Workflows are defined using **YAML configuration files**
- **Events** determine when a workflow is triggered
- **Jobs** organise groups of work within a workflow
- **Steps** define individual tasks performed inside jobs
- Understanding workflow structure provides the foundation for building practical **CI/CD pipelines**

---

## Reflection

Learning about CI/CD pipelines helped me understand that GitHub Actions workflows are structured automated processes rather than simply collections of commands. Events determine when automation begins, while jobs and steps define what the pipeline actually performs.

Understanding this structure gives me a stronger foundation before building more advanced workflows. Applying these concepts through a simple CI pipeline will help me understand how individual GitHub Actions components work together to automate code validation and software delivery.
