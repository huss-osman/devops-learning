# Github Actions

## Overview

GitHub Actions is an automation platform built into GitHub that allows developers to automate software development tasks directly from repositories while supporting continuous integration, testing, deployment, and reliable software delivery across development teams.

I learned how GitHub Actions integrates with CI/CD by responding to repository events and automatically running workflows for building, testing, packaging, and deploying application code while improving consistency, reliability, and efficiency across development processes.

---

## GitHub Actions

**GitHub Actions**  
GitHub Actions is a CI/CD automation platform that runs workflows in response to events within a GitHub repository.

### Characteristics of GitHub Actions

- **Event-Driven** – Workflows can automatically run when events such as pushes or commits occur.
- **Repository Integration** – Automation is directly connected to code stored within GitHub.
- **CI/CD Automation** – Automates building, testing, packaging, and deployment processes.
- **YAML Configuration** – Workflows are defined using YAML configuration files.
- **Automated Feedback** – Failed builds or tests provide feedback so developers can fix issues.

### Example

A developer commits and pushes new code to GitHub, triggering GitHub Actions to automatically start the configured CI/CD process.

---

## Events

**Events**  
Events are activities within a repository that can trigger a GitHub Actions workflow.

### Characteristics of Events

- **Push Events** – Trigger workflows when code is pushed to a repository.
- **Pull Requests** – Run automation when pull requests are created or updated.
- **Repository Activity** – Workflows can respond to different repository actions.
- **Automatic Triggers** – Removes the need to manually start common CI/CD processes.
- **Workflow Control** – Different events can trigger different automation workflows.

### Example

A `push` event can automatically trigger a workflow whenever a developer pushes new code to the repository.

---

## Key Takeaways

- GitHub Actions provides CI/CD automation directly within GitHub.
- Repository events can automatically trigger workflows.
- Workflows are configured using YAML files.
- GitHub Actions can automate builds, tests, and deployments.
- Automated feedback helps developers identify failed changes quickly.
- GitHub Actions connects source control directly with the CI/CD process.

---

## Reflection

I learned how GitHub Actions connects source control with CI/CD automation. Understanding how repository events trigger automated processes helped me see how teams can consistently build, test, and deploy code while reducing manual intervention.
