<img width="1000" height="500" alt="Terraform Banner" src="images/TerraformBanner.png" />

# Terraform

![IaC](https://img.shields.io/badge/IaC-Terraform-7B42BC?logo=terraform&logoColor=white)
![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![Focus](https://img.shields.io/badge/Focus-Infrastructure%20as%20Code-purple)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents learning of **Terraform** and **Infrastructure as Code (IaC)** through infrastructure deployment.

Terraform is a technology in modern cloud engineering and DevOps. It enables infrastructure to be defined as code, allowing cloud resources to be created, updated, and managed in a consistent, repeatable, and automated way across platforms.

Repository focus: understanding **Terraform, Infrastructure as Code, state management, providers, variables, and reusable infrastructure**.

---

## 🧠 New to Terraform? Read This First

- Terraform can seem overwhelming at first — that's completely normal
- Focus on understanding **Infrastructure as Code**, not just the syntax
- Learn what Terraform is doing before trying to memorise commands
- Read execution plans carefully before applying changes
- Break infrastructure intentionally to better understand Terraform state
- Revisit concepts multiple times through hands-on practice

> [!IMPORTANT]
> Understanding Terraform is extremely important for modern DevOps, cloud engineering, platform engineering, and infrastructure automation.

---

## Learning Objectives

By working through this module, I aimed to:

- Understand Infrastructure as Code (IaC)
- Learn how Terraform manages cloud infrastructure
- Understand Terraform state and why it matters
- Deploy AWS infrastructure using Terraform
- Learn providers, resources, variables, and outputs
- Understand reusable and maintainable Terraform configurations
- Gain confidence using Terraform workflows safely
- Build a strong foundation for production Infrastructure as Code

---

## Topics Covered

### Fundamentals

- [Terraform Introduction](./fundamentals/01-terraform-introduction.md)  
  Introduction to Terraform, Infrastructure as Code, and modern infrastructure automation.

- [Infrastructure as Code (IaC)](./fundamentals/02-infrastructure-as-code.md)  
  Understanding Infrastructure as Code and why organisations adopt it.

- [IaC with Version Control](./fundamentals/03-iac-with-version-control.md)  
  Managing infrastructure safely using Git and version control.

- [Orchestration vs Configuration Management](./fundamentals/04-orchestration-vs-configuration-management.md)  
  Understanding Terraform's role alongside tools such as Ansible.

- [What is Terraform?](./fundamentals/05-what-is-terraform.md)  
  Learning how Terraform provisions and manages infrastructure.

- [Terraform Best Practices](./fundamentals/06-terraform-best-practices.md)  
  General guidance for writing safe and maintainable Terraform.

- [Installing Terraform](./fundamentals/07-installing-terraform.md)  
  Installing Terraform and preparing the local environment.

- [Terraform State](./fundamentals/08-terraform-state.md)  
  Understanding how Terraform tracks infrastructure.

- [Deploying Infrastructure](./fundamentals/09-deploying-infrastructure.md)  
  The lifecycle of provisioning infrastructure with Terraform.

- [Terraform Providers](./fundamentals/10-terraform-providers.md)  
  Understanding providers and how Terraform communicates with cloud platforms.

- [Terraform Provider Configuration](./fundamentals/11-terraform-provider-configuration.md)  
  Configuring providers for infrastructure deployments.

- [Terraform Init](./fundamentals/12-terraform-init.md)  
  Initialising Terraform projects and downloading providers.

- [Terraform Plan](./fundamentals/13-terraform-plan.md)  
  Reviewing infrastructure changes before deployment.

- [Terraform Apply](./fundamentals/14-terraform-apply.md)  
  Provisioning infrastructure safely.

- [Terraform Destroy](./fundamentals/15-terraform-destroy.md)  
  Removing infrastructure managed by Terraform.

- [Resource Blocks](./fundamentals/16-resource-blocks.md)  
  Understanding Terraform resources and configuration blocks.

- [Terraform Registry](./fundamentals/17-terraform-registry.md)  
  Discovering providers and reusable modules.

- [Local State](./fundamentals/18-local-state.md)  
  Understanding locally stored Terraform state.

- [Remote State](./fundamentals/19-remote-state.md)  
  Managing shared Terraform state for teams.

- [Configuring Backends](./fundamentals/20-configuring-backends.md)  
  Using remote backends for secure state management.

- [Terraform Workflows](./fundamentals/21-terraform-workflows.md)  
  Understanding common Infrastructure as Code workflows.

- [Variables](./fundamentals/22-variables.md)  
  Making Terraform configurations reusable.

- [Input Variables](./fundamentals/23-input-variables.md)  
  Passing configurable values into Terraform.

- [Count](./fundamentals/24-count.md)  
  Creating multiple resources efficiently.

- [For Each](./fundamentals/25-for-each.md)  
  Iterating over collections of resources.

- [Coalesce Function](./fundamentals/26-coalesce.md)  
  Working with default values.

- [Variable Merging](./fundamentals/27-variable-merging.md)  
  Combining multiple values into reusable configurations.

- [Conditionals](./fundamentals/28-conditionals.md)  
  Creating dynamic Terraform configurations.

- [String & List Functions](./fundamentals/29-string-and-list-functions.md)  
  Manipulating strings and collections.

- [Managing Files](./fundamentals/30-managing-files.md)  
  Reading and using external files in Terraform.

- [Templates](./fundamentals/31-templates.md)  
  Building dynamic configuration files.

- [Working with JSON](./fundamentals/32-working-with-json.md)  
  Using JSON data inside Terraform.

- [For Loops](./fundamentals/33-for-loops.md)  
  Creating dynamic values using iteration.

- [String Functions](./fundamentals/34-string-functions.md)  
  Working with string manipulation functions.

- [Can Function](./fundamentals/35-can-function.md)  
  Safely handling expressions and validation.

- [List & Map Functions](./fundamentals/36-list-and-map-functions.md)  
  Manipulating Terraform collections.

- [Range Function](./fundamentals/37-range-function.md)  
  Generating numeric sequences.

- [Dynamic Blocks](./fundamentals/38-dynamic-blocks.md)  
  Building flexible and reusable resource configurations.

---

### Labs

- [Deploying an EC2 Instance](./labs/01-deploying-an-ec2-instance.md)  
  Provisioning AWS infrastructure using Terraform.

- [Importing Existing Infrastructure](./labs/02-importing-existing-infrastructure.md)  
  Importing manually created AWS resources into Terraform state.

---

### Assignments

- [Deploy WordPress Using Terraform](./assignments/01-wordpress-with-terraform.md)  
  Provisioning a complete WordPress environment on AWS using Infrastructure as Code.

- [EC2 Deployment with Cloud-Init](./assignments/02-cloud-init-ec2-deployment.md)  
  Automating EC2 configuration using Terraform and cloud-init.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Building infrastructure instead of only reading documentation
- Understanding Terraform execution before memorising commands
- Learning how Infrastructure as Code behaves in real cloud environments
- Practising safe deployment workflows using plans and state
- Developing reusable, maintainable infrastructure configurations
- Building a strong foundation before progressing to larger Infrastructure as Code projects

The goal is long-term understanding that transfers directly into **AWS**, **multi-cloud environments**, **CI/CD**, **platform engineering**, and modern **DevOps workflows**.

---

## Folder Structure

```bash
07-terraform/
├── README.md
│
├── fundamentals/
│   ├── README.md
│   ├── 01-terraform-introduction.md
│   ├── 02-infrastructure-as-code.md
│   ├── 03-iac-with-version-control.md
│   ├── 04-orchestration-vs-configuration-management.md
│   ├── 05-what-is-terraform.md
│   ├── 06-terraform-best-practices.md
│   ├── 07-installing-terraform.md
│   ├── 08-terraform-state.md
│   ├── 09-deploying-infrastructure.md
│   ├── 10-terraform-providers.md
│   ├── 11-terraform-provider-configuration.md
│   ├── 12-terraform-init.md
│   ├── 13-terraform-plan.md
│   ├── 14-terraform-apply.md
│   ├── 15-terraform-destroy.md
│   ├── 16-resource-blocks.md
│   ├── 17-terraform-registry.md
│   ├── 18-local-state.md
│   ├── 19-remote-state.md
│   ├── 20-configuring-backends.md
│   ├── 21-terraform-workflows.md
│   ├── 22-variables.md
│   ├── 23-input-variables.md
│   ├── 24-count.md
│   ├── 25-for-each.md
│   ├── 26-coalesce.md
│   ├── 27-variable-merging.md
│   ├── 28-conditionals.md
│   ├── 29-string-and-list-functions.md
│   ├── 30-managing-files.md
│   ├── 31-templates.md
│   ├── 32-working-with-json.md
│   ├── 33-for-loops.md
│   ├── 34-string-functions.md
│   ├── 35-can-function.md
│   ├── 36-list-and-map-functions.md
│   ├── 37-range-function.md
│   └── 38-dynamic-blocks.md
│
├── labs/
│   ├── README.md
│   ├── 01-deploying-an-ec2-instance.md
│   └── 02-importing-existing-infrastructure.md
│
└── assignments/
    ├── README.md
    ├── 01-wordpress-with-terraform.md
    └── 02-cloud-init-ec2-deployment.md
```

---

## Fundamentals

The Fundamentals section focuses on building Terraform knowledge through **Infrastructure as Code principles and cloud provisioning**.

Rather than memorising syntax, the emphasis is on understanding:

- How Terraform provisions infrastructure
- How state tracks deployed resources
- How providers communicate with cloud platforms
- Why Infrastructure as Code improves consistency and automation
- How reusable configurations simplify infrastructure management

These notes build a strong foundation for future topics such as **Terraform modules**, **CI/CD**, **multi-cloud deployments**, and **production Infrastructure as Code**.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying Terraform knowledge through **hands-on infrastructure deployment and state management**.

Each lab includes:

- Deploying cloud infrastructure using Terraform
- Investigating Terraform state and resource management
- Importing existing infrastructure into Terraform
- Understanding deployment workflows and troubleshooting
- Applying Infrastructure as Code in practical AWS environments

These labs simulate the workflows used by **cloud engineers**, **platform engineers**, and **DevOps engineers**.

➡️ [View Labs](./labs)

---

## Assignments

The Assignments section focuses on applying Terraform knowledge through **real-world Infrastructure as Code projects**.

Assignments include:

- Provisioning complete AWS environments
- Deploying applications using Infrastructure as Code
- Automating server configuration with cloud-init
- Structuring reusable Terraform configurations
- Managing variables, outputs, providers, and state

These assignments simulate how cloud infrastructure is provisioned, managed, and automated in modern **production DevOps environments**.

➡️ [View Assignments](./assignments)
