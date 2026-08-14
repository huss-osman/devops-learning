# Production CI/CD

## Overview

This section explores production CI/CD practices and how automated testing, linting, deployment environments, security, and debugging work together to create reliable pipelines capable of safely moving application changes from development through testing into production.

Production CI/CD combines code quality checks, automated testing, controlled deployments, secure workflows, and effective troubleshooting, helping teams detect problems early, reduce risks, protect sensitive information, and maintain reliable software delivery across environments.

---

## Automated Testing and Linting

**Automated Testing and Linting**  
Automated testing and linting help maintain code quality by automatically detecting coding issues, verifying expected behaviour, and identifying problems before changes progress further through the CI/CD pipeline.

### Characteristics of Automated Testing and Linting

- **Code analysis** – Linting scans source code for syntax errors, potential bugs, and coding standard violations.
- **Automated validation** – Tests automatically verify that application functionality behaves as expected.
- **Early detection** – Problems can be identified before code reaches later pipeline stages.
- **Consistent quality** – Automated checks ensure the same validation process runs whenever code changes.
- **Linting tools** – Tools such as ESLint and Pylint analyse JavaScript and Python code.
- **Testing tools** – Frameworks such as unittest, pytest, Jest, and Mocha provide automated application testing.

<p align="center">
<img width="600" height="380" alt="image" src="https://github.com/user-attachments/assets/732e7252-0858-4c20-8dfc-a20c38f5917c" />
</p>

> This example highlights ESLint and Python tooling used for code quality practices, helping developers automatically analyse source code and identify potential issues before changes progress through the CI/CD pipeline.

<p align="center">
<img width="600" height="380" alt="image" src="https://github.com/user-attachments/assets/ec20cd04-99a8-41fa-90b7-a966ae6782d2" />
</p>

> This example highlights common automated testing frameworks including unittest, pytest, Jest, and Mocha, which can automatically verify application behaviour and identify failures whenever changes are introduced.

---

## Deployment Environments

**Deployment Environments**  
Deployment environments represent separate stages where applications are developed, tested, validated, and eventually made available to users throughout the software delivery lifecycle.

### Characteristics of Deployment Environments

- **Development** – Provides a sandbox where developers build features, experiment, and fix bugs.
- **Staging** – Provides a stable environment designed to closely mirror production before release.
- **Production** – Represents the live application environment accessed by real users.
- **Environment separation** – Keeps development and testing activity isolated from live systems.
- **Pre-production validation** – Staging allows final testing before changes reach users.
- **Controlled progression** – Application changes can move progressively through development, staging, and production.

<p align="center">
<img width="471" height="690" alt="image" src="https://github.com/user-attachments/assets/14be7688-8a83-4f0e-9998-f0ad679a8905" />
</p>

> This example demonstrates the three main deployment environments: development for building and experimentation, staging for final production-like testing, and production for delivering the live application to users.

---

## Deployment Strategies

**Deployment Strategies**  
Deployment strategies define how application changes are moved between environments, either through manual processes or automated CI/CD workflows.

### Characteristics of Deployment Strategies

- **Manual deployment** – Requires engineers to manually move or release application changes.
- **Automated deployment** – Uses CI/CD workflows, scripts, and tools to perform deployments automatically.
- **Reduced human error** – Automation removes many repetitive manual deployment tasks.
- **Faster delivery** – Automated processes can move validated changes between environments efficiently.
- **Consistent execution** – The same deployment procedure can be repeated reliably.
- **Pipeline integration** – Deployments can occur automatically after required CI checks successfully complete.

<p align="center">
<img width="487" height="677" alt="image" src="https://github.com/user-attachments/assets/dd50c9f6-bd58-42fd-bf48-4753be01146b" />
</p>

> This example compares manual and automated deployment strategies, where automation allows CI/CD pipelines to move application changes between environments more consistently while reducing repetitive manual work.

---

## Deployment Tools

**Deployment Tools**  
Cloud platforms provide infrastructure and managed services that CI/CD pipelines can use to deploy and operate applications across different environments.

### Characteristics of Deployment Tools

- **AWS services** – Applications can be deployed using services such as EC2, ECS, EKS, and Lambda.
- **Azure services** – Azure provides deployment platforms including AKS and App Service.
- **Google Cloud services** – GCP provides services such as Cloud Run, GKE, App Engine, and Cloud Functions.
- **Container deployment** – Services such as ECS, EKS, AKS, and GKE support containerised workloads.
- **Serverless deployment** – Services such as Lambda and Cloud Functions support serverless applications.
- **CI/CD integration** – Cloud services can act as deployment targets for automated pipelines.

<p align="center">
<img width="463" height="695" alt="image" src="https://github.com/user-attachments/assets/823d6b43-9f12-41f2-927d-cf60a722f397" />
</p>

> This example highlights cloud deployment tools across AWS, Azure, and Google Cloud that can provide infrastructure and application platforms for CI/CD deployment workflows.

---

## CI/CD Security

**CI/CD Security**  
CI/CD security protects source code, credentials, workflows, dependencies, and deployment processes from unauthorised access and potential vulnerabilities.

### Characteristics of CI/CD Security

- **Secure secrets** – API keys, passwords, tokens, and other credentials should never be hard-coded into source code.
- **Secret management** – GitHub Secrets and other secret management tools securely provide credentials to workflows.
- **Least privilege** – Users and workflows should receive only the permissions required to perform their tasks.
- **Access control** – Role-based access control helps manage who can access repositories and workflows.
- **Vulnerability scanning** – Tools such as Dependabot and Snyk can identify known dependency vulnerabilities.
- **Audit and monitoring** – Logging and monitoring help identify unusual activity and provide visibility into pipeline operations.

---

## Debugging Workflow Failures

**Debugging Workflow Failures**  
Debugging workflow failures involves identifying why a CI/CD pipeline failed and using workflow information and logs to locate and resolve the underlying problem.

### Characteristics of Debugging Workflow Failures

- **Failed tests** – Application tests may fail because expected behaviour does not match the implementation.
- **Dependency errors** – External packages may be missing, incompatible, or incorrectly installed.
- **Configuration errors** – YAML syntax, indentation, spelling, or incorrect settings can cause workflow failures.
- **Permission issues** – Workflows may lack permission to access secrets, repositories, files, or other resources.
- **Review logs** – Workflow logs provide detailed information about failed jobs and steps.
- **Rerun jobs** – Rerunning a workflow can help determine whether a failure was temporary or consistent.
- **Check dependencies** – Updating or correcting dependencies can resolve compatibility problems.
- **Verify configuration** – Workflow files, environment variables, and secrets should be checked when troubleshooting.

---

## Key Takeaways

- **Production CI/CD** combines automation, testing, deployment, security, and troubleshooting
- **Linting** identifies syntax issues, potential bugs, and coding standard violations
- **Automated testing** verifies application behaviour whenever code changes
- Development, staging, and production provide separate environments throughout software delivery
- Automated deployments improve consistency and reduce repetitive manual deployment work
- AWS, Azure, and GCP provide services that can act as CI/CD deployment targets
- Secrets should be securely managed rather than hard-coded into source code
- Least privilege and access controls help protect CI/CD workflows
- Vulnerability scanning helps identify security problems within code and dependencies
- Workflow logs are one of the first places to investigate when debugging pipeline failures

---

## Reflection

Learning about production CI/CD helped me understand that real-world pipelines involve much more than simply building and deploying code. Automated testing, linting, separate deployment environments, security controls, and deployment automation all contribute to creating a reliable software delivery process.

I also learned that pipeline failures are a normal part of CI/CD and that debugging requires understanding logs, tests, dependencies, configuration, and permissions. Combining these practices provides a stronger foundation for building secure, maintainable, and production-ready CI/CD workflows.
