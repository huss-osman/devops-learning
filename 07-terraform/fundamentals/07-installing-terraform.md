# Installing Terraform

## Overview

This section introduces how to install **Terraform** by following the official **HashiCorp documentation**. The installation process varies depending on your operating system, but HashiCorp provides clear step-by-step guidance for **Windows**, **macOS**, and **Linux**.

It helps build an understanding of how Terraform is installed and verified before beginning Infrastructure as Code projects. Learning to navigate the official documentation is an important skill for working with **Terraform**, **cloud engineering**, and modern DevOps environments.

<p align="center">
  <img width="900" alt="Install Terraform Tutorial" src="https://github.com/user-attachments/assets/f827c303-2416-467e-a69b-22341b94e24a"> 
</p>

<p align="center">
  <a href="https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli">
    Official HashiCorp Install Terraform Guide
  </a>
</p>

---

## Installing Terraform

**Terraform Installation**  
The process of downloading, installing, and verifying the Terraform CLI using the official HashiCorp installation guides.

### Installation Process

- Follow the official HashiCorp installation documentation
- Choose the installation guide for your operating system
- Install the required package manager if necessary
- Install the Terraform CLI
- Verify the installation before creating infrastructure

HashiCorp provides dedicated installation instructions for each supported operating system. Rather than memorising installation commands, it is good practice to become familiar with the official documentation so you can confidently install or update Terraform in any environment.

---

## Commands

These commands are commonly used when installing and verifying Terraform.

### macOS (Homebrew)

```bash
brew tap hashicorp/tap
```

Adds the official HashiCorp repository to Homebrew.

```bash
brew install hashicorp/tap/terraform
```

Installs the Terraform CLI.

```bash
terraform --version
```

Verifies that Terraform has been installed successfully.

---

### Windows (Chocolatey)

```powershell
choco install terraform
```

Installs Terraform using the Chocolatey package manager.

```powershell
terraform --version
```

Verifies that Terraform has been installed successfully.

---

### Linux

Installation varies depending on the Linux distribution. Follow the official HashiCorp documentation for your package manager or manual installation method.

```bash
terraform --version
```

Verifies that Terraform has been installed successfully.

---

## Key Takeaways

- Install Terraform by following the official **HashiCorp documentation**
- The installation process differs between Windows, macOS, and Linux
- Package managers such as **Homebrew** and **Chocolatey** simplify installation
- Always verify the installation before creating infrastructure
- Becoming familiar with the official documentation is an important Terraform skill

---

## Reflection

Learning how to install Terraform showed me the importance of relying on official documentation rather than memorising installation commands. The documentation provides platform-specific guidance and makes it straightforward to install, update, and verify Terraform across different operating systems.

I also learned that package managers such as Homebrew and Chocolatey simplify software installation and dependency management. This reinforces the value of understanding installation workflows before beginning Infrastructure as Code projects with Terraform.
