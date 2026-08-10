# CICD In DevOps Architecture

## Overview

CI/CD is a key part of the DevOps architecture, connecting source control with automated build, testing, deployment, monitoring, and logging processes across the entire software development lifecycle efficiently.

I learned how source control, CI/CD, and monitoring work together to create a continuous workflow that allows teams to deliver code reliably while identifying issues and feeding improvements back into development.

<p align="center">
<img width="1871" height="962" alt="image" src="https://github.com/user-attachments/assets/a5b02a58-be35-40ee-a384-79bb4307855d" />
</p>

<p align="center">
*DevOps pipeline flow from Source Control → CI/CD → Monitoring and Logging.*
</p>

---

## Source Control

**Source Control**  
Source control is where developers store, manage, track, and collaborate on changes to application code.

### Characteristics of Source Control

- **Code Management** – Stores and manages application source code.
- **Version History** – Maintains a history of changes made to the codebase.
- **Collaboration** – Allows multiple developers to work on the same project.
- **Branching** – Enables developers to work on changes independently.
- **CI/CD Integration** – Code changes can automatically trigger CI/CD workflows.

### Example

A developer pushes code to GitHub, which stores the change and triggers a CI/CD workflow to begin testing and building the application.

---

## CI/CD

**CI/CD**  
CI/CD automates the integration, testing, building, and deployment of application changes.

### Characteristics of CI/CD

- **Continuous Integration** – Frequently integrates code changes into a shared codebase.
- **Automated Testing** – Runs tests automatically to identify problems early.
- **Automated Builds** – Converts source code into deployable application artifacts.
- **Continuous Delivery** – Prepares validated changes for reliable deployment.
- **Automated Deployment** – Allows approved changes to be released consistently.

### Example

After code is pushed to source control, a CI/CD pipeline automatically builds the application, runs tests, and deploys the validated version.

---

## Monitoring and Logging

**Monitoring and Logging**  
Monitoring and logging provide visibility into an application's performance and behaviour after deployment.

### Characteristics of Monitoring and Logging

- **Application Monitoring** – Continuously tracks application health and performance.
- **Log Collection** – Records important application and system events.
- **Issue Detection** – Helps identify failures and unexpected behaviour.
- **Performance Tracking** – Provides visibility into application performance over time.
- **Feedback Loop** – Sends operational insights back into development and CI/CD.

### Example

Prometheus and Grafana can monitor application performance, while logging tools can help identify errors that developers can fix in future code changes.

---

## Key Takeaways

- Source control manages and tracks application code.
- Code changes can trigger automated CI/CD workflows.
- CI/CD automates building, testing, and deployment.
- Monitoring provides visibility after an application is deployed.
- Logging helps teams investigate errors and application behaviour.
- DevOps creates a continuous feedback loop between development and operations.

---

## Reflection

I learned how source control, CI/CD, monitoring, and logging connect within the wider DevOps architecture. Understanding this flow helped me see that CI/CD is not an isolated process but part of a continuous feedback loop that allows teams to build, deploy, monitor, and improve applications efficiently.
