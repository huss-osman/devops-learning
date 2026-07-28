# Terraform Import

## Overview

This section introduces **Terraform Import**, which allows existing cloud resources to be brought under Terraform management without recreating them.

It covers why Terraform Import is important, how to locate the required import documentation in the Terraform Registry, and how to identify the resource ID needed to import existing infrastructure.

<p align="center">
  <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#import">
    Official Terraform Import Documentation
  </a>
</p>

---

## Steps

### Step 1 — Open the Terraform Registry

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/95a734e0-5901-4d2e-8d61-304ef3500b48"> 
</p>

Open the **Terraform Registry** and select **Browse Providers**.

---

### Step 2 — Select the AWS Provider

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/f187de09-0235-41c4-b5a4-e0be356e5279"> 
</p>

Choose the official **AWS** provider maintained by HashiCorp.

---

### Step 3 — Open the Documentation

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/2dd1d76f-81d0-46f0-b082-263bd172bc7f"> 
</p>

Open the **Documentation** tab for the AWS provider.

---

### Step 4 — Search for `aws_instance`

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/cd7d121c-b35b-4ca4-9532-10179a6a85c3"> 
</p>

Search for the **`aws_instance`** resource to view its documentation.

---

### Step 5 — Open the Import Section

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/f40c068c-210a-43b5-92fe-6cd2b399e086">
</p>

Scroll to the **Import** section to view the supported import methods for EC2 instances.

---

## Import Block (Terraform v1.5.0+)

Starting with **Terraform v1.5.0**, existing resources can be imported using an **`import` block**. Alternatively, Terraform also supports importing resources using the **`terraform import`** command. Both methods require the resource ID of the existing infrastructure. :contentReference[oaicite:0]{index=0}

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/ae12466e-6cfd-475e-9dca-c9128d1ec5b7">
</p>

### Option 1 — Import Block (Terraform v1.5+)

```terraform
import {
  to = aws_instance.web
  id = "i-12345678"
}
```

### Option 2 — `terraform import` Command

```bash
terraform import aws_instance.web i-12345678
```

> [!NOTE]
> After importing a resource, run `terraform plan` to verify that your Terraform configuration matches the existing infrastructure. If the desired state matches the current state, Terraform should report **No changes**. :contentReference[oaicite:1]{index=1}

---

## Key Takeaways

- Terraform Import allows existing cloud resources to be managed with Terraform.
- Existing infrastructure can be imported without recreating resources.
- The Terraform Registry documents the required import method for each resource.
- EC2 instances are imported using their **Instance ID**.
- Terraform v1.5.0 introduced the `import` block for declarative imports.

---

## Reflection

Terraform Import demonstrated how Infrastructure as Code can be adopted for existing environments without rebuilding resources from scratch. Understanding how to locate the required import documentation and identify the correct resource ID is an important step when introducing Terraform into production environments that were originally deployed manually.
