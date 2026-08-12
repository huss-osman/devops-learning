# Reusable Workflows And Custom Actions

## Overview

This section explores **reusable workflows and custom actions in GitHub Actions** and how they allow common automation logic to be shared across projects, reducing duplicated configuration and creating cleaner, more maintainable CI/CD pipelines.

Reusable workflows and custom actions allow teams to package repeated automation into reusable components, helping standardise CI/CD processes, simplify workflow configuration, share custom tooling between repositories, and improve consistency across different software projects.

---

## Custom Actions

**Custom Actions**  
Custom actions are reusable units of code that automate specific tasks within GitHub Actions workflows and can be shared across different projects.

### Characteristics of Custom Actions

- **Reusable automation** – Packages common workflow functionality into reusable components.
- **Project-specific tooling** – Automates tasks designed around the requirements of a particular project.
- **Multiple action types** – Actions can be created using JavaScript, Docker, or composite actions.
- **Cross-project usage** – Custom actions can be reused across different repositories and workflows.
- **GitHub integration** – Actions integrate directly into GitHub Actions workflow steps.
- **Open-source sharing** – Actions can optionally be published for others to reuse.

<p align="center">
<img width="450" height="319" alt="image" src="https://github.com/user-attachments/assets/ce2ffa4c-f1ac-4f7b-9886-cc1e94e82120" />
</p>

> This example highlights JavaScript and Docker as two approaches for creating custom GitHub Actions, allowing automation logic to run through Node.js code or inside a containerised environment.

---

## Creating Custom Actions

**Creating Custom Actions**  
Creating a custom action involves defining reusable automation in its own repository, configuring its metadata, implementing the required logic, and optionally publishing the action for others.

### Characteristics of Creating Custom Actions

- **Action repository** – A repository can be created to host the custom action.
- **Action metadata** – An `action.yml` file defines information and configuration for the action.
- **Action logic** – The functionality of the action is implemented through code or workflow steps.
- **Reusable design** – Actions are designed so the same automation can be used repeatedly.
- **Marketplace support** – Public actions can optionally be published to GitHub Marketplace.
- **Shareable tooling** – Custom automation can be distributed across multiple projects.

<p align="center">
<img width="669" height="489" alt="image" src="https://github.com/user-attachments/assets/37e30afe-814b-4e0a-b329-5cf598cf6106" />
</p>

> This example demonstrates the process of creating a custom action by creating a repository, defining the action metadata in `action.yml`, writing the action code, and optionally publishing it to GitHub Marketplace.

---

## Reusing Custom Actions

**Reusing Custom Actions**  
Custom actions can be referenced from another repository inside workflow steps, allowing existing automation to be reused without rewriting the underlying implementation.

### Characteristics of Reusing Custom Actions

- **Repository references** – Actions can be referenced using an owner and repository.
- **Version selection** – A version or Git reference determines which action implementation is used.
- **`uses` keyword** – The `uses` property identifies the external action.
- **Input values** – The `with` property passes configurable values into an action.
- **Reduced duplication** – Existing automation does not need to be recreated in every workflow.
- **Consistent execution** – The same action logic can be applied across multiple projects.

<p align="center">
<img width="703" height="322" alt="image" src="https://github.com/user-attachments/assets/d120ee85-a0be-475f-8fab-e86f82058d45" />
</p>

> This example demonstrates the reusable action syntax where `owner/repo@v1` references a custom action from another repository and `with` passes an input value into the action during execution.

---

## Using a Custom Action

**Using a Custom Action**  
A custom action is added as a workflow step using `uses`, while configurable inputs can be supplied through `with` to control how the reusable action behaves.

### Characteristics of Using a Custom Action

- **Workflow integration** – Custom actions can be included directly within workflow steps.
- **Action references** – The repository and Git reference identify the action to execute.
- **Configurable inputs** – Values can be supplied through the `with` property.
- **Reusable behaviour** – The same action can perform tasks for different workflows.
- **Simpler workflows** – Complex automation can be represented by a small reusable workflow step.
- **Centralised logic** – Changes to shared action logic can be maintained separately from consuming workflows.

```yaml
- name: Use Hello World Action
  uses: huss-osman/hello-world-action@main
  with:
    who-to-greet: 'Osman'
```

<p align="center">
<img width="1271" height="358" alt="image" src="https://github.com/user-attachments/assets/e7855832-b851-4dcf-97eb-0f0c62ec2507" />
</p>

> This example demonstrates a workflow using the `moabukar/coderco-custom@main` custom action and passing `Coderco Team` as an input, allowing reusable action logic to be executed from another repository.

---

## Key Takeaways

- **Custom actions** package specific CI/CD automation into reusable components
- GitHub Actions supports **JavaScript, Docker, and composite actions**
- An `action.yml` file defines the metadata and configuration of a custom action
- Custom actions can be stored and shared through separate GitHub repositories
- The `uses` keyword references an action from within a workflow step
- The `with` keyword allows configurable inputs to be passed into an action
- Reusable actions reduce duplicated workflow configuration across projects
- Custom actions can optionally be published through **GitHub Marketplace**

---

## Reflection

Learning about reusable workflows and custom actions helped me understand how CI/CD automation can be packaged and shared instead of repeatedly writing the same workflow logic. Custom actions provide a structured way to create project-specific tooling using JavaScript, Docker, or composite actions.

I also learned how actions can be stored in separate repositories and referenced through the `uses` keyword while accepting configurable inputs through `with`. This provides a cleaner approach to building reusable, consistent, and maintainable CI/CD automation across multiple projects.
