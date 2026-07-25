<img width="1000" height="500" alt="Terraform Fundamentals Banner" src="../images/TerraformFundamentalsBanner.png" />

# Terraform Fundamentals

![IaC](https://img.shields.io/badge/IaC-Terraform-7B42BC?logo=terraform&logoColor=white)
![Focus](https://img.shields.io/badge/Focus-Infrastructure%20as%20Code-purple)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This folder contains my core **Terraform fundamentals** notes focused on Infrastructure as Code, cloud provisioning, and Terraform workflows.

Each topic focuses on understanding **how Terraform manages infrastructure**, not just memorising commands or syntax.

Examples are practical, cloud-focused, and tied to real-world DevOps and cloud engineering workflows.

---

## Topics Covered

- [Terraform Introduction](./01-terraform-introduction.md)  
  An introduction to Terraform, Infrastructure as Code, and modern infrastructure automation.

- [Infrastructure as Code (IaC)](./02-infrastructure-as-code.md)  
  Understanding Infrastructure as Code and why organisations adopt it.

- [IaC with Version Control](./03-iac-with-version-control.md)  
  Managing infrastructure safely using Git and version control.

- [Orchestration vs Configuration Management](./04-orchestration-vs-configuration-management.md)  
  Understanding Terraform's role alongside configuration management tools.

- [What is Terraform?](./05-what-is-terraform.md)  
  Learning how Terraform provisions and manages cloud infrastructure.

- [Terraform Best Practices](./06-terraform-best-practices.md)  
  Writing safe, readable, and maintainable Terraform configurations.

- [Installing Terraform](./07-installing-terraform.md)  
  Installing Terraform and preparing the local development environment.

- [Terraform State](./08-terraform-state.md)  
  Understanding how Terraform tracks infrastructure resources.

- [Deploying Infrastructure](./09-deploying-infrastructure.md)  
  The Terraform deployment lifecycle from configuration to provisioning.

- [Terraform Providers](./10-terraform-providers.md)  
  Understanding providers and how Terraform communicates with cloud platforms.

- [Terraform Provider Configuration](./11-terraform-provider-configuration.md)  
  Configuring providers for infrastructure deployments.

- [Terraform Init](./12-terraform-init.md)  
  Initialising Terraform projects and downloading provider plugins.

- [Terraform Plan](./13-terraform-plan.md)  
  Reviewing infrastructure changes before deployment.

- [Terraform Apply](./14-terraform-apply.md)  
  Creating and updating infrastructure safely.

- [Terraform Destroy](./15-terraform-destroy.md)  
  Removing Terraform-managed infrastructure.

- [Resource Blocks](./16-resource-blocks.md)  
  Understanding how resources are defined within Terraform configurations.

- [Terraform Registry](./17-terraform-registry.md)  
  Finding providers and reusable Terraform modules.

- [Local State](./18-local-state.md)  
  Managing Terraform state locally.

- [Remote State](./19-remote-state.md)  
  Sharing and protecting Terraform state for collaborative environments.

- [Configuring Backends](./20-configuring-backends.md)  
  Using remote backends to store Terraform state securely.

- [Terraform Workflows](./21-terraform-workflows.md)  
  Understanding common Infrastructure as Code workflows and deployment practices.

- [Variables](./22-variables.md)  
  Creating reusable Terraform configurations with variables.

- [Input Variables](./23-input-variables.md)  
  Passing configurable values into Terraform.

- [Count](./24-count.md)  
  Creating multiple infrastructure resources efficiently.

- [For Each](./25-for-each.md)  
  Iterating over collections to provision resources dynamically.

- [Coalesce Function](./26-coalesce.md)  
  Providing default values using Terraform functions.

- [Variable Merging](./27-variable-merging.md)  
  Combining multiple values into reusable configurations.

- [Conditionals](./28-conditionals.md)  
  Creating flexible infrastructure using conditional expressions.

- [String & List Functions](./29-string-and-list-functions.md)  
  Manipulating strings and collections within Terraform.

- [Managing Files](./30-managing-files.md)  
  Reading and using external files in Terraform configurations.

- [Templates](./31-templates.md)  
  Creating dynamic configuration files using templates.

- [Working with JSON](./32-working-with-json.md)  
  Reading, generating, and processing JSON data.

- [For Loops](./33-for-loops.md)  
  Building dynamic values using iteration.

- [String Functions](./34-string-functions.md)  
  Working with Terraform's built-in string functions.

- [Can Function](./35-can-function.md)  
  Safely evaluating expressions and validation logic.

- [List & Map Functions](./36-list-and-map-functions.md)  
  Manipulating Terraform collections and data structures.

- [Range Function](./37-range-function.md)  
  Generating sequences for dynamic resource creation.

- [Dynamic Blocks](./38-dynamic-blocks.md)  
  Creating flexible and reusable resource configurations.

---

## Learning Focus

- Understand the principles of Infrastructure as Code
- Learn how Terraform provisions and manages cloud infrastructure
- Understand providers, resources, variables, and state
- Build reusable and maintainable Terraform configurations
- Develop safe deployment workflows using init, plan, apply, and destroy
- Build a strong foundation for Terraform modules, CI/CD pipelines, and production cloud infrastructure
