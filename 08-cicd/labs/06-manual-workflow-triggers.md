# Manual Workflow Triggers

## Overview

This lab demonstrates how to create and use manual workflow triggers in GitHub Actions, allowing a workflow to be started on demand while providing configurable inputs that control how the CI/CD pipeline executes during each run.

It covers configuring `workflow_dispatch`, defining manual inputs, creating selectable Python versions, setting default values, triggering workflows through GitHub Actions, debugging workflow syntax errors, and verifying successful manual pipeline execution across different configurations.

---

## Steps

### Step 1 — Create the Manual Workflow

Create a new workflow file inside the `.github/workflows` directory.

For this example, create:

```text
.github/workflows/manual.yaml
```

Give the workflow a descriptive name:

```yaml
name: CI/CD Manual Workflow
```

This identifies the workflow inside the GitHub Actions interface.

---

### Step 2 — Configure the Manual Trigger

Use `workflow_dispatch` to allow the workflow to be started manually through GitHub Actions.

```yaml
on:
  push:
  workflow_dispatch:
```

The `push` trigger allows the workflow to run automatically when changes are pushed, while `workflow_dispatch` provides the option to start it manually.

---

### Step 3 — Define the Manual Input

Add an `inputs` section underneath `workflow_dispatch` to define information that can be selected before the workflow starts.

```yaml
on:
  push:
  workflow_dispatch:
    inputs:
      python-version:
        description: 'Choose Python version'
        required: true
        default: '3.7'
        type: choice
```

The `python-version` input allows the user to choose which Python version should be used during the workflow execution.

---

### Step 4 — Add Python Version Options

Define the available Python versions using the `options` property.

```yaml
options:
  - '3.7'
  - '3.8'
  - '3.9'
```

The workflow provides three selectable Python versions, while Python `3.7` is configured as the default if another version is not selected.

<p align="center">
<img width="1276" height="1233" alt="image" src="https://github.com/user-attachments/assets/654bc756-46ea-4116-bc10-a723d99d91ce" />
</p>

> This example demonstrates a GitHub Actions workflow configured with `workflow_dispatch`, allowing Python `3.7`, `3.8`, or `3.9` to be selected when manually triggering the CI/CD workflow.

---

### Step 5 — Configure the Workflow Jobs

Add the workflow jobs that should execute after the workflow has been triggered.

The pipeline can include steps for:

- Checking out the repository
- Setting up Python
- Installing dependencies
- Running automated tests

The selected Python version can then be referenced by the workflow when configuring the execution environment.

This allows the same workflow to run with different configurations without creating separate workflow files.

---

### Step 6 — Commit and Push the Workflow

Stage the workflow changes:

```bash
git add .
```

Commit the changes:

```bash
git commit -m "Add manual workflow"
```

Push the workflow to GitHub:

```bash
git push
```

Once pushed, the manual workflow becomes available through the GitHub Actions interface.

---

### Step 7 — Debug Workflow Syntax

If the workflow fails or does not appear correctly, inspect the YAML configuration and workflow logs to identify the problem.

Common issues include:

- Incorrect indentation
- Invalid YAML syntax
- Incorrect input configuration
- Missing quotation marks
- Invalid Python version formatting
- Incorrect workflow structure

After correcting the workflow, stage and commit the changes:

```bash
git add .
git commit -m "Fix manual workflow syntax"
git push
```

Debugging workflow configuration is a normal part of building and testing CI/CD pipelines.

---

### Step 8 — Run the Workflow Manually

Open the repository on GitHub and navigate to the **Actions** tab.

Select the **CI/CD Manual Workflow** and choose **Run workflow**.

The configured Python versions will appear as selectable options:

```text
3.7
3.8
3.9
```

Choose the required version and select **Run workflow** to manually start the pipeline.

GitHub Actions will create a new workflow run using the selected configuration.

---

### Step 9 — Verify the Manual Workflow

Open the triggered workflow run from the **Actions** tab.

Inspect the workflow steps and confirm that the configured tasks execute successfully.

The workflow should complete tasks such as:

```text
Checkout code
Setup Python
Install dependencies
Run tests
```

Run the workflow again using another Python version to confirm that the manual input correctly changes the workflow configuration.

---

## Key Takeaways

- `workflow_dispatch` enables **manual workflow triggers** in GitHub Actions.
- Manual workflows can be started directly through the **GitHub Actions interface**.
- The `inputs` property defines configurable values before workflow execution.
- `type: choice` provides predefined options that users can select.
- `default` defines the value used when another option is not selected.
- Manual inputs can control configurations such as the **Python version** used by a workflow.
- Manual triggers are useful for controlled deployments, maintenance tasks, and on-demand jobs.
- Workflow logs help identify and debug syntax, configuration, and execution failures.

---

## Reflection

Creating a manually triggered GitHub Actions workflow helped me understand how CI/CD pipelines can provide controlled execution instead of relying entirely on automatic events such as pushes. I learned how `workflow_dispatch` enables manual execution and configurable workflow inputs.

I also learned how to define selectable values, configure defaults, debug workflow syntax errors, and verify different configurations through GitHub Actions. This gives me a practical foundation for building flexible CI/CD workflows for deployments, maintenance tasks, and other on-demand processes.
