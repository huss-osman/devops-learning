# Secrets And Encrypted Variables

## Overview

This section explores **secrets and encrypted variables in GitHub Actions** and how they securely store sensitive information such as API keys, passwords, tokens, and credentials required during automated CI/CD workflow execution.

Secrets allow workflows to access sensitive values without exposing them directly within source code, helping teams protect credentials, securely authenticate external services, and prevent confidential information from being committed into repositories.

---

## Secrets and Encrypted Variables

**Secrets and Encrypted Variables**  
Secrets and encrypted variables securely store sensitive information that GitHub Actions workflows can access during execution without exposing the values directly within the workflow configuration.

### Characteristics of Secrets and Encrypted Variables

- **Sensitive information** – Stores credentials such as API keys, passwords, tokens, and authentication details.
- **Encrypted storage** – Secret values are encrypted and securely stored within GitHub.
- **Workflow access** – Secrets can be referenced within workflow steps when authentication or credentials are required.
- **Secrets context** – `${{ secrets.SECRET_NAME }}` provides access to a configured secret within a workflow.
- **Repository protection** – Prevents sensitive credentials from being written directly inside workflow files or source code.
- **Secure automation** – Allows CI/CD pipelines to authenticate with external platforms and services without exposing credentials.

<p align="center">
<img width="1499" height="749" alt="image" src="https://github.com/user-attachments/assets/955b58c9-41fd-4425-a7d6-2abca9d0e5f9" />
</p>

> This example demonstrates how sensitive credentials can be stored as repository secrets in GitHub and securely referenced within GitHub Actions workflows without exposing their actual values in the codebase.

---

## Key Takeaways

- **Secrets** securely store sensitive information used by CI/CD workflows
- Secret values are encrypted and managed through GitHub repository settings
- `${{ secrets.SECRET_NAME }}` references a configured secret inside a workflow
- Secrets prevent credentials from being hardcoded directly into workflow files
- API keys, passwords, tokens, and credentials should be stored as secrets
- Secrets allow workflows to securely authenticate with external services
- Secure secret management helps protect applications and CI/CD environments

---

## Reflection

Learning about secrets and encrypted variables helped me understand how GitHub Actions can securely use sensitive credentials without storing them directly inside workflow files. Secrets provide a safer way to manage API keys, passwords, tokens, and other authentication information.

I also learned how secrets can be referenced dynamically within workflow steps when external services require authentication. This makes CI/CD pipelines more secure and maintainable while reducing the risk of accidentally exposing sensitive credentials within repositories.
