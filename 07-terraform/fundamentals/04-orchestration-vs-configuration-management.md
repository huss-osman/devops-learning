# Orchestration vs Configuration Management

## Overview

This section introduces the difference between **infrastructure orchestration** and **configuration management**, two key concepts used throughout modern DevOps and cloud engineering. Although they work closely together, each has a distinct role in deploying and managing infrastructure.

It helps build an understanding of how tools such as **Terraform**, **AWS CloudFormation**, **Ansible**, **Puppet**, and **Chef** fit into the deployment lifecycle, making them essential for **Infrastructure as Code**, **automation**, and production cloud environments.

---

## Infrastructure Orchestration

**Infrastructure Orchestration**  
The process of provisioning and organising infrastructure resources in the correct order before applications are configured and deployed.

### Role in Modern Infrastructure

- Provisions cloud infrastructure such as virtual machines and networking
- Creates infrastructure resources in the correct deployment order
- Automates infrastructure deployment using Infrastructure as Code
- Provides consistent and repeatable infrastructure provisioning
- Works alongside configuration management tools

Infrastructure orchestration focuses on creating the infrastructure required for applications before any software, services, or configurations are applied. Tools such as **Terraform** and **AWS CloudFormation** automate the provisioning of cloud resources including virtual machines, networks, storage, and security components.

---

## Configuration Management

**Configuration Management**  
The process of configuring and maintaining infrastructure after it has been provisioned, ensuring systems are installed, configured, and maintained in their desired state.

### Role in Modern Infrastructure

- Installs software and required packages
- Configures operating systems and services
- Maintains servers in a consistent desired state
- Automates repetitive administration tasks
- Works alongside infrastructure orchestration tools

Configuration management focuses on preparing provisioned infrastructure by installing applications, configuring services, and maintaining consistency across servers. Tools such as **Ansible**, **Puppet**, and **Chef** automate these tasks, ensuring infrastructure is configured correctly after it has been deployed.

---

## How They Work Together

Infrastructure orchestration and configuration management complement each other throughout the deployment lifecycle.

Infrastructure orchestration provisions the cloud resources required for an application, while configuration management prepares those resources by installing software, configuring services, and maintaining systems in their desired state.

A typical workflow is:

1. Provision infrastructure using **Terraform** or **AWS CloudFormation**.
2. Configure the provisioned infrastructure using **Ansible**, **Puppet**, or **Chef**.
3. Deploy and maintain applications on the configured infrastructure.

---

## Key Takeaways

- **Infrastructure orchestration** provisions and organises cloud infrastructure
- **Configuration management** configures and maintains provisioned infrastructure
- Terraform and AWS CloudFormation are examples of orchestration tools
- Ansible, Puppet, and Chef are examples of configuration management tools
- Both approaches work together to automate modern infrastructure deployments

---

## Reflection

Learning the difference between infrastructure orchestration and configuration management helped me understand that deploying infrastructure involves multiple stages. Creating infrastructure and configuring it are separate responsibilities that work together to deliver complete, production-ready environments.

I also learned how orchestration tools such as Terraform provision cloud resources, while configuration management tools such as Ansible prepare those resources to run applications and services. This reinforces how multiple DevOps tools integrate to automate the entire infrastructure deployment lifecycle.
