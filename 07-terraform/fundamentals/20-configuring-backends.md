# Configuring an Amazon S3 Backend

## Overview

This section introduces the **Amazon S3 backend**, which stores Terraform state remotely instead of on the local machine, improving collaboration, reliability, security, and state management across environments.

It covers how to create an S3 bucket, configure Terraform to use it as a remote backend, and initialise Terraform so infrastructure state is stored securely in Amazon S3 for collaborative infrastructure management.

<p align="center">
  <a href="https://developer.hashicorp.com/terraform/language/backend/s3">
    Official Terraform S3 Backend Documentation
  </a>
</p>

---

## Steps

### Step 1 — Create an S3 Bucket

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/76137cd4-a7d8-4e8f-b317-cb417da63b5c"> 
</p>

Create an **Amazon S3 bucket** that will be used to store the Terraform state file.

> [!NOTE]
> S3 bucket names must be globally unique.

---

### Step 2 — Install the Terraform Extension (Optional)

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/ec266f52-06c3-4aa4-bdc5-338008c527a4">
</p>

Install the official **HashiCorp Terraform** extension for Visual Studio Code to enable Terraform syntax highlighting and autocomplete.

---

### Step 3 — Configure the S3 Backend

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/132b4484-44bc-4fe2-8c9a-db43c27887ad"> 
</p>

Configure the **`backend "s3"`** block inside the Terraform configuration.

```terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }

  backend "s3" {
    bucket = "osman-terraform-state-2026"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}
```

---

### Step 4 — Initialise the Backend

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/6ac375a0-1a77-41c8-9347-d61fbc7a6352"> 
</p>

Run the following command to initialise Terraform and configure the remote backend.

```bash
terraform init
```

If an existing local state file is present, Terraform will prompt to migrate it to the S3 backend.

> [!NOTE]
> After successful initialisation, Terraform stores future state updates in the configured S3 bucket instead of the local `terraform.tfstate` file.

---

## Key Takeaways

- Amazon S3 can be used as a remote backend for Terraform state.
- The backend block defines where Terraform stores the state file.
- `terraform init` configures and initialises the remote backend.
- Existing local state can be migrated into the S3 backend.
- Remote state enables safer collaboration and protects against local machine failures.

---

## Reflection

Configuring a remote backend demonstrated how Terraform separates infrastructure code from infrastructure state. Storing the state file in Amazon S3 provides a central location for Terraform state, making infrastructure management more reliable and better suited for collaborative and production environments.
