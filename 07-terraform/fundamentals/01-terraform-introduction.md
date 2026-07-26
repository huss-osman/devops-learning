# Terraform Introduction

## Overview

This module introduces the core concepts of **Terraform** and **Infrastructure as Code (IaC)** used in modern cloud engineering and DevOps environments. It focuses on understanding how cloud infrastructure is defined, automated, deployed, and managed using code rather than manual configuration.

This is useful in real-world environments where understanding **Infrastructure as Code**, **automation**, **state management**, and **cloud provisioning** is essential. Instead of relying on commands alone, building a strong foundation in Terraform helps explain how modern cloud infrastructure is created, maintained, and scaled consistently across different environments.

---

## What You'll Learn

This module is structured to take you from Terraform fundamentals to practical, real-world Infrastructure as Code concepts.

### Fundamentals

- [Infrastructure as Code (IaC)](./02-infrastructure-as-code.md)  
  Understanding Infrastructure as Code and why organisations adopt it.

- [IaC with Version Control](./03-iac-with-version-control.md)  
  Managing infrastructure safely using Git and version control.

- [Orchestration vs Configuration Management](./04-orchestration-vs-configuration-management.md)  
  Understanding Terraform's role alongside tools such as Ansible.

- [What is Terraform?](./05-what-is-terraform.md)  
  Learning how Terraform provisions and manages infrastructure.

- [Terraform Best Practices](./06-terraform-best-practices.md)  
  General guidance for writing safe and maintainable Terraform.

- [Installing Terraform](./07-installing-terraform.md)  
  Installing Terraform and preparing the local environment.

- [Terraform State](./08-terraform-state.md)  
  Understanding how Terraform tracks infrastructure.

- [Deploying Infrastructure](./09-deploying-infrastructure.md)  
  The lifecycle of provisioning infrastructure with Terraform.

- [Terraform Providers](./10-terraform-providers.md)  
  Understanding providers and how Terraform communicates with cloud platforms.

- [Terraform Provider Configuration](./11-terraform-provider-configuration.md)  
  Configuring providers for infrastructure deployments.

- [Terraform Init](./12-terraform-init.md)  
  Initialising Terraform projects and downloading providers.

- [Terraform Plan](./13-terraform-plan.md)  
  Reviewing infrastructure changes before deployment.

- [Terraform Apply](./14-terraform-apply.md)  
  Provisioning infrastructure safely.

- [Terraform Destroy](./15-terraform-destroy.md)  
  Removing infrastructure managed by Terraform.

- [Resource Blocks](./16-resource-blocks.md)  
  Understanding Terraform resources and configuration blocks.

- [Terraform Registry](./17-terraform-registry.md)  
  Discovering providers and reusable modules.

- [Local State](./18-local-state.md)  
  Understanding locally stored Terraform state.

- [Remote State](./19-remote-state.md)  
  Managing shared Terraform state for teams.

- [Configuring Backends](./20-configuring-backends.md)  
  Using remote backends for secure state management.

- [Terraform Workflows](./21-terraform-workflows.md)  
  Understanding common Infrastructure as Code workflows.

- [Variables](./22-variables.md)  
  Making Terraform configurations reusable.

- [Input Variables](./23-input-variables.md)  
  Passing configurable values into Terraform.

- [Count](./24-count.md)  
  Creating multiple resources efficiently.

- [For Each](./25-for-each.md)  
  Iterating over collections of resources.

- [Coalesce Function](./26-coalesce.md)  
  Working with default values.

- [Variable Merging](./27-variable-merging.md)  
  Combining multiple values into reusable configurations.

- [Conditionals](./28-conditionals.md)  
  Creating dynamic Terraform configurations.

- [String & List Functions](./29-string-and-list-functions.md)  
  Manipulating strings and collections.

- [Managing Files](./30-managing-files.md)  
  Reading and using external files in Terraform.

- [Templates](./31-templates.md)  
  Building dynamic configuration files.

- [Working with JSON](./32-working-with-json.md)  
  Using JSON data inside Terraform.

- [For Loops](./33-for-loops.md)  
  Creating dynamic values using iteration.

- [String Functions](./34-string-functions.md)  
  Working with string manipulation functions.

- [Can Function](./35-can-function.md)  
  Safely handling expressions and validation.

- [List & Map Functions](./36-list-and-map-functions.md)  
  Manipulating Terraform collections.

- [Range Function](./37-range-function.md)  
  Generating numeric sequences.

- [Dynamic Blocks](./38-dynamic-blocks.md)  
  Building flexible and reusable resource configurations.

---

### Labs

- [Deploying an EC2 Instance](../labs/01-deploying-an-ec2-instance.md)  
  Provisioning AWS infrastructure using Terraform.

- [Importing Existing Infrastructure](../labs/02-importing-existing-infrastructure.md)  
  Importing manually created AWS resources into Terraform state.

---

### Assignments

- [Deploy WordPress Using Terraform](../assignments/01-wordpress-with-terraform.md)  
  Provisioning a complete WordPress environment on AWS using Infrastructure as Code.

- [EC2 Deployment with Cloud-Init](../assignments/02-cloud-init-ec2-deployment.md)  
  Automating EC2 configuration using Terraform and cloud-init.

---

## Commands

While this section is concept-focused, you will later apply your knowledge using tools such as:

- `terraform init` → Initialise a **Terraform working directory**
- `terraform plan` → Preview **infrastructure changes**
- `terraform apply` → Provision or update **cloud infrastructure**
- `terraform destroy` → Remove **Terraform-managed infrastructure**
- `terraform validate` → Validate **Terraform configuration files**

---

## Key Takeaways

- **Terraform** enables infrastructure to be provisioned and managed using code
- Infrastructure as Code improves consistency, automation, and repeatability
- Terraform supports multiple cloud providers through a common workflow
- Understanding Terraform fundamentals builds the foundation for scalable cloud infrastructure
- Strong Terraform knowledge is essential before progressing to **modules**, **CI/CD**, and **production Infrastructure as Code**

---

## Reflection

Working through the Terraform fundamentals helped me understand how modern cloud infrastructure can be defined, deployed, and managed consistently using code. It is not just about writing Terraform configuration files, but understanding how infrastructure is provisioned, how state tracks resources, and how deployments can be automated safely across different environments.

I also learned that concepts such as **providers**, **resource blocks**, **variables**, **state management**, and **deployment workflows** are fundamental to building reliable Infrastructure as Code solutions. This provides a strong foundation before progressing to reusable modules, automated CI/CD pipelines, and production cloud environments.
