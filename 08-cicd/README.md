# CI/CD

![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-2088FF?logo=githubactions&logoColor=white)
![Automation](https://img.shields.io/badge/Focus-Automation-blue)
![DevOps](https://img.shields.io/badge/DevOps-Workflows-purple)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents learning of **CI/CD** and **GitHub Actions** through automated software delivery workflows.

CI/CD is a core practice in modern DevOps engineering. It enables code changes to be automatically built, tested, validated, and deployed through repeatable pipelines, reducing manual intervention and improving software delivery reliability.

Repository focus: understanding **CI/CD, GitHub Actions, YAML, pipelines, workflow automation, testing, security, and deployment**.

---

## 🧠 New to CI/CD? Read This First

- CI/CD is about automating the software delivery lifecycle
- Focus on understanding the workflow before memorising YAML syntax
- Learn how events trigger jobs and steps inside pipelines
- Start with simple pipelines before introducing advanced automation
- Understand why testing and validation happen before deployment
- Revisit concepts through hands-on GitHub Actions practice

> [!IMPORTANT]
> Understanding CI/CD is extremely important for modern DevOps, cloud engineering, platform engineering, and software delivery automation.

---

## Learning Objectives

By working through this module, I aim to:

- Understand Continuous Integration and Continuous Delivery
- Learn how CI/CD pipelines automate software delivery
- Build automated workflows using GitHub Actions
- Understand YAML workflow syntax and structure
- Automate testing, linting, builds, and deployment
- Learn conditions, matrix builds, and parallel testing
- Manage secrets securely inside CI/CD workflows
- Build reusable and maintainable automation workflows
- Gain confidence troubleshooting pipeline failures
- Build a strong foundation for production CI/CD

---

## Topics Covered

### Fundamentals

- [CI/CD Fundamentals](./fundamentals/01-cicd-fundamentals.md)  
  Understanding Continuous Integration, Continuous Delivery, and their role in DevOps.

- [CI/CD in DevOps Architecture](./fundamentals/02-cicd-in-devops-architecture.md)  
  Understanding where CI/CD fits within modern DevOps architectures.

- [GitHub Actions](./fundamentals/03-github-actions.md)  
  Introduction to GitHub Actions and automated development workflows.

- [GitHub Actions Workflows](./fundamentals/04-github-actions-workflows.md)  
  Understanding workflows, events, jobs, steps, and actions.

- [YAML Syntax](./fundamentals/05-yaml-syntax.md)  
  Learning YAML syntax used to define GitHub Actions workflows.

- [CI/CD Pipelines](./fundamentals/06-cicd-pipelines.md)  
  Understanding pipeline structure and automated CI workflows.

- [Conditions and Expressions](./fundamentals/07-conditions-and-expressions.md)  
  Controlling workflow execution using conditions and expressions.

- [Matrix Builds and Parallel Testing](./fundamentals/08-matrix-builds-and-parallel-testing.md)  
  Running builds and tests across multiple configurations efficiently.

- [Secrets and Encrypted Variables](./fundamentals/09-secrets-and-encrypted-variables.md)  
  Managing sensitive values securely inside CI/CD workflows.

- [Reusable Workflows and Custom Actions](./fundamentals/10-reusable-workflows-and-custom-actions.md)  
  Creating reusable CI/CD components and custom GitHub Actions.

- [Production CI/CD](./fundamentals/11-production-cicd.md)  
  Automated testing, environments, deployment, security, and debugging.

- [Manual Triggers](./fundamentals/12-manual-triggers.md)  
  Running and debugging GitHub Actions workflows manually.

---

### Labs

- [Building a Simple CI Pipeline](./labs/01-building-a-simple-ci-pipeline.md)  
  Creating a GitHub Actions workflow that automatically runs checks when code changes.

- [Conditions and Expressions](./labs/02-conditions-and-expressions.md)  
  Controlling when jobs and workflow steps execute.

- [Matrix Builds and Parallel Testing](./labs/03-matrix-builds-and-parallel-testing.md)  
  Running automated tests across multiple configurations in parallel.

- [Using Secrets Securely](./labs/04-using-secrets-securely.md)  
  Managing encrypted values safely inside GitHub Actions workflows.

- [Creating a Custom Action](./labs/05-creating-a-custom-action.md)  
  Building and reusing a custom GitHub Action.

- [Manual Workflow Triggers](./labs/06-manual-workflow-triggers.md)  
  Triggering and debugging workflows manually using GitHub Actions.

---

### Assignments

- [Build a Basic CI Pipeline](./assignments/01-basic-ci-pipeline.md)  
  Building an automated CI pipeline that runs tests or checks on each push.

- [Build a Simple CD Workflow](./assignments/02-simple-cd-workflow.md)  
  Building an automated deployment workflow that delivers application changes to an environment.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Building pipelines instead of only reading documentation
- Understanding workflow execution before memorising YAML
- Learning how automation behaves through real GitHub repositories
- Practising automated testing, builds, and deployments
- Developing reusable and maintainable CI/CD workflows
- Troubleshooting failures to better understand pipeline behaviour

The goal is long-term understanding that transfers directly into **AWS**, **Docker**, **Terraform**, **Kubernetes**, **platform engineering**, and modern **DevOps workflows**.

---

## Folder Structure

```bash
08-cicd/
├── README.md
│
├── fundamentals/
│   ├── README.md
│   ├── 01-cicd-fundamentals.md
│   ├── 02-cicd-in-devops-architecture.md
│   ├── 03-github-actions.md
│   ├── 04-github-actions-workflows.md
│   ├── 05-yaml-syntax.md
│   ├── 06-cicd-pipelines.md
│   ├── 07-conditions-and-expressions.md
│   ├── 08-matrix-builds-and-parallel-testing.md
│   ├── 09-secrets-and-encrypted-variables.md
│   ├── 10-reusable-workflows-and-custom-actions.md
│   ├── 11-production-cicd.md
│   └── 12-manual-triggers.md
│
├── labs/
│   ├── README.md
│   ├── 01-building-a-simple-ci-pipeline.md
│   ├── 02-conditions-and-expressions.md
│   ├── 03-matrix-builds-and-parallel-testing.md
│   ├── 04-using-secrets-securely.md
│   ├── 05-creating-a-custom-action.md
│   └── 06-manual-workflow-triggers.md
│
└── assignments/
    ├── .github/
    │   └── workflows/
    │       ├── docker-build-push.yaml
    │       └── terraform-ci-checks.yaml
    │
    ├── assets/
    │   ├── docker-build-push.png
    │   └── terraform-ci-checks.png
    │
    ├── docker-build-push/
    │   ├── Dockerfile
    │   ├── README.md
    │   └── hello.py
    │
    ├── terraform-checks/
    │   ├── README.md
    │   ├── main.tf
    │   └── provider.tf
    │
    ├── .gitignore
    └── README.md
```

---

## Fundamentals

The Fundamentals section focuses on building CI/CD knowledge through **automation principles, GitHub Actions, and software delivery workflows**.

Rather than memorising YAML syntax, the emphasis is on understanding:

- How Continuous Integration validates code changes
- How Continuous Delivery automates software releases
- How GitHub Actions workflows execute
- How events, jobs, steps, and actions build pipelines
- How testing, security, and deployment fit into CI/CD
- How reusable workflows improve automation

These notes build a strong foundation for future topics such as **AWS deployments**, **Docker automation**, **Terraform pipelines**, **Kubernetes**, and **production DevOps workflows**.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying CI/CD knowledge through **hands-on GitHub Actions workflows and pipeline automation**.

Each lab includes:

- Building automated CI pipelines
- Working with workflow events, jobs, and steps
- Applying conditions and expressions
- Running matrix builds and parallel tests
- Managing secrets securely
- Creating reusable automation
- Triggering and debugging workflows

These labs simulate workflows used by **DevOps engineers**, **platform engineers**, and **cloud engineers**.

➡️ [View Labs](./labs)

---

## Assignments

The Assignments section focuses on applying CI/CD knowledge through **practical software delivery automation projects**.

Assignments include:

- Building an automated Continuous Integration pipeline
- Running tests, linting, or build checks automatically
- Triggering pipelines from pushes and pull requests
- Building Continuous Delivery workflows
- Automating application or environment deployments
- Applying GitHub Actions in practical DevOps workflows

These assignments simulate how software is tested, validated, built, and deployed in modern **production DevOps environments**.

➡️ [View Assignments](./assignments)
