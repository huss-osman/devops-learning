# CI/CD Fundamentals

## Overview

This module introduces the core concepts of **Continuous Integration (CI)** and **Continuous Delivery/Deployment (CD)**, explaining how automated building, testing, delivery, and deployment help teams reliably move code changes through software development environments.

This is useful in real-world environments where **automation**, **continuous feedback**, **consistent testing**, and **reliable software delivery** help teams integrate changes frequently, identify issues earlier, reduce manual processes, and deliver software through automated workflows.

<p align="center">
  <img width="1792" height="340" alt="image" src="https://github.com/user-attachments/assets/00165c2a-407a-4a27-b352-d5c252c0ca6f" />
</p>

---

## What You'll Learn

This module is structured to take you from CI/CD fundamentals to practical, real-world pipeline automation concepts.

### Fundamentals

- [CI/CD in DevOps Architecture](./02-cicd-in-devops-architecture.md)  
  Understanding where CI/CD fits within modern DevOps architectures.

- [GitHub Actions](./03-github-actions.md)  
  Introduction to GitHub Actions and automated development workflows.

- [GitHub Actions Workflows](./04-github-actions-workflows.md)  
  Understanding workflows, events, jobs, steps, and actions.

- [YAML Syntax](./05-yaml-syntax.md)  
  Learning YAML syntax used to define GitHub Actions workflows.

- [CI/CD Pipelines](./06-cicd-pipelines.md)  
  Understanding pipeline structure and automated CI workflows.

- [Conditions and Expressions](./07-conditions-and-expressions.md)  
  Controlling workflow execution using conditions and expressions.

- [Matrix Builds and Parallel Testing](./08-matrix-builds-and-parallel-testing.md)  
  Running builds and tests across multiple configurations efficiently.

- [Secrets and Encrypted Variables](./09-secrets-and-encrypted-variables.md)  
  Managing sensitive values securely inside CI/CD workflows.

- [Reusable Workflows and Custom Actions](./10-reusable-workflows-and-custom-actions.md)  
  Creating reusable CI/CD components and custom GitHub Actions.

- [Production CI/CD](./11-production-cicd.md)  
  Understanding automated testing, environments, deployment, security, and debugging.

- [Manual Triggers](./12-manual-triggers.md)  
  Running and debugging GitHub Actions workflows manually.

---

### Labs

- [Building a Simple CI Pipeline](../labs/01-building-a-simple-ci-pipeline.md)  
  Creating a GitHub Actions workflow that automatically runs checks when code changes.

- [Conditions and Expressions](../labs/02-conditions-and-expressions.md)  
  Controlling when jobs and workflow steps execute.

- [Matrix Builds and Parallel Testing](../labs/03-matrix-builds-and-parallel-testing.md)  
  Running automated tests across multiple configurations in parallel.

- [Using Secrets Securely](../labs/04-using-secrets-securely.md)  
  Managing encrypted values safely inside GitHub Actions workflows.

- [Creating a Custom Action](../labs/05-creating-a-custom-action.md)  
  Building and reusing a custom GitHub Action.

- [Manual Workflow Triggers](../labs/06-manual-workflow-triggers.md)  
  Triggering and debugging workflows manually using GitHub Actions.

---

### Assignments

- [Build a Basic CI Pipeline](../assignments/01-basic-ci-pipeline.md)  
  Building an automated CI pipeline that runs tests or checks on each push.

- [Build a Simple CD Workflow](../assignments/02-simple-cd-workflow.md)  
  Building an automated deployment workflow that delivers application changes to an environment.

---

## Continuous Integration

**Continuous Integration (CI)**  
The practice of frequently integrating code changes into a shared repository where automated builds and tests can validate each change.

### Characteristics of Continuous Integration

- **Frequent integration** – Developers regularly merge code changes into a shared repository.
- **Automated builds** – Code changes automatically trigger the build process.
- **Automated testing** – Tests validate changes before they progress further through the pipeline.
- **Early feedback** – Problems are identified quickly after code changes are introduced.
- **Improved collaboration** – Teams work from a continuously updated and validated codebase.

<p align="center">
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/0152e196-1ab4-46ea-bb93-51f82a99e0b0" />
</p>

---

## Continuous Delivery

**Continuous Delivery (CD)**  
The practice of keeping software in a releasable state by automatically building, testing, and preparing changes for deployment.

### Characteristics of Continuous Delivery

- **Release readiness** – Software remains ready to be released when required.
- **Automated validation** – Changes pass automated tests and checks before release.
- **Repeatable delivery** – The same delivery process is followed consistently.
- **Reduced manual work** – Automation handles repetitive build and delivery tasks.
- **Controlled releases** – Deployment to production can remain a deliberate decision.

---

## Continuous Deployment

**Continuous Deployment (CD)**  
The practice of automatically deploying every validated change to production after it successfully passes all required pipeline stages.

### Characteristics of Continuous Deployment

- **Automatic releases** – Successful changes can progress directly into production.
- **Pipeline driven** – Deployment depends on automated pipeline validation.
- **Frequent delivery** – Smaller software changes can reach users more regularly.
- **Reduced manual intervention** – Deployment does not require a manual release step.
- **Continuous feedback** – Production feedback helps teams improve future changes.

---

## CI/CD Tools

**CI/CD Tools**  
Platforms and services used to automate the building, testing, integration, delivery, and deployment stages of software development.

### Characteristics of CI/CD Tools

- **Pipeline automation** – Automates stages of the software delivery process.
- **Repository integration** – Connects pipelines with source code repositories.
- **Automated testing** – Runs tests and validation when workflows are triggered.
- **Deployment support** – Helps automate delivery across different environments.
- **Workflow visibility** – Provides feedback about pipeline execution and failures.

<p align="center">
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/db02c7af-91c6-4e17-a444-f30c3eb6e8f6" />
</p>

Examples include **GitHub Actions, GitLab CI/CD, Jenkins, CircleCI, and Travis CI**.

---

## CI/CD in DevOps

**CI/CD in DevOps**  
CI/CD provides the automation required to continuously move software from development through testing, delivery, and deployment.

### Characteristics of CI/CD in DevOps

- **Collaboration** – Creates a shared workflow between development and operations.
- **Automation** – Reduces repetitive manual processes across software delivery.
- **Continuous feedback** – Provides rapid feedback from builds, tests, and deployments.
- **Consistency** – Uses repeatable processes across development environments.
- **Faster delivery** – Helps changes progress through the software lifecycle efficiently.

<p align="center">
<img width="1637" height="807" alt="image" src="https://github.com/user-attachments/assets/120f33de-dd48-42cb-b0cb-cffa363f932e" />
</p>

---

## Key Takeaways

- **CI/CD** automates important stages of the software delivery lifecycle
- Continuous Integration regularly integrates and validates code changes
- Continuous Delivery keeps validated software ready for release
- Continuous Deployment can automatically release successful changes to production
- CI/CD provides automation, collaboration, consistency, and continuous feedback
- CI/CD tools help automate building, testing, validation, delivery, and deployment
- CI/CD forms a core part of modern DevOps workflows

---

## Reflection

Working through the CI/CD fundamentals helped me understand how code moves from a developer's change through automated build, testing, delivery, and deployment stages. CI/CD is not simply about creating pipelines, but about building a consistent and repeatable process for validating and delivering software.

I also learned the distinction between **Continuous Integration**, **Continuous Delivery**, and **Continuous Deployment**, and how automation connects each stage of the software lifecycle. Understanding these concepts provides a strong foundation before progressing to GitHub Actions, YAML workflows, automated testing, reusable workflows, and production deployment pipelines.
