# Creating A Custom Action

## Overview

This lab demonstrates how to create and use a custom GitHub Action by packaging specific automation into a reusable component that can be referenced and executed across different GitHub Actions workflows and multiple project repositories efficiently and consistently.

It covers the custom action creation process, defining action metadata, implementing reusable logic, referencing actions from another repository, passing configurable inputs, and integrating the completed custom action directly into an automated CI/CD workflow for reuse.

---

## Steps

### Step 1 — Understand the Custom Action Creation Process

A custom action is created by storing reusable automation inside its own repository and defining how GitHub Actions should execute it.

The general process consists of:

1. Create a repository for the action.
2. Define the action metadata in `action.yml`.
3. Write the code or logic for the action.
4. Optionally publish the action to GitHub Marketplace.

<p align="center">
<img width="669" height="489" alt="image" src="https://github.com/user-attachments/assets/d5db7f7f-2c32-4d23-a687-46405ae87108" />
</p>

> This demonstrates the main process for creating a custom GitHub Action, from creating the repository and defining `action.yml` to implementing the action logic and optionally publishing it.

---

### Step 2 — Create the Custom Action Repository

Create a new GitHub repository that will contain the custom action.

For this example, the action repository is:

```text
huss-osman/hello-world-action
```

---

This repository will contain the metadata and implementation required for the reusable action.

---

### Step 3 — Define the Action Metadata

Create an `action.yml` file inside the custom action repository.

The `action.yml` file describes the action and defines information such as its inputs and how the action should execute.

---

### Step 4 — Implement the Action Logic

Write the logic that the custom action will execute.

Depending on the type of custom action, the implementation can use:

- JavaScript
- Docker
- Composite workflow steps

The action logic remains inside the action repository so other workflows can reuse it without duplicating the implementation.

---

### Step 5 — Reference a Custom Action

Custom actions stored in another repository can be referenced from a workflow using the `uses` keyword.

The general structure is:

```yaml
- name: Custom Action Step
  uses: owner/repo@v1
  with:
    some-input: 'value'
```

<p align="center">
<img width="559" height="254" alt="image" src="https://github.com/user-attachments/assets/d0d4f2bd-6136-457a-bf91-272814d168a9" />
</p>

> This demonstrates the general syntax for referencing a custom action from another repository and passing a configurable value into the action using `with`.

---

### Step 6 — Use the Hello World Custom Action

Reference the custom action from the workflow using the repository name and Git reference.

```yaml
- name: Use Hello World Action
  uses: huss-osman/hello-world-action@main
  with:
    who-to-greet: 'Osman'
```

The `uses` property points to the custom action repository, while `@main` specifies the Git reference containing the action.

The `with` property passes `Osman` into the action through the `who-to-greet` input.

<p align="center">
<img width="1271" height="358" alt="image" src="https://github.com/user-attachments/assets/9db04831-6580-43b8-ba53-eda0a5d88434" />
</p>

> This demonstrates the `huss-osman/hello-world-action@main` custom action being referenced from a workflow and receiving `Osman` through the `who-to-greet` input.

---

### Step 7 — Commit and Push the Workflow

Stage the changes:

```bash
git add .
```

Commit the changes:

```bash
git commit -m "Add custom GitHub Action"
```

Push the changes:

```bash
git push
```

The workflow can now execute the reusable custom action when its configured trigger occurs.

---

### Step 8 — Verify the Custom Action

Open the **Actions** tab inside the GitHub repository and select the workflow run.

Inspect the workflow logs and confirm that the custom action executed successfully with the configured input.

---

## Key Takeaways

- **Custom actions** package CI/CD automation into reusable components.
- Custom actions can be stored inside separate GitHub repositories.
- The `action.yml` file defines the metadata and configuration of an action.
- Custom actions can use JavaScript, Docker, or composite workflow steps.
- The `uses` keyword references a custom action from another workflow.
- The `with` keyword passes configurable inputs into an action.
- `owner/repository@reference` identifies which custom action and version should execute.
- Reusable actions reduce duplicated automation across CI/CD workflows.

---

## Reflection

Creating a custom GitHub Action helped me understand how CI/CD automation can be separated from individual workflows and packaged into reusable components. I learned how an action is created, configured through metadata, and stored independently for reuse.

I also learned how another workflow can reference the action through `uses` and provide configurable inputs through `with`. This gives me a practical foundation for creating reusable tooling and reducing duplicated logic across CI/CD workflows.
