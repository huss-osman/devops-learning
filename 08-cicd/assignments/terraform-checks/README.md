# Terraform Validation Pipeline

This directory contains a CI pipeline that validates Terraform configuration using GitHub Actions.

The pipeline enforces consistent formatting and validates configuration correctness before any infrastructure changes are made. Terraform code is checked in CI, without applying resources or interacting with a live environment.

---

## What this Pipeline Demonstrates

- Enforcing Terraform formatting using `terraform fmt -check`
- Validating Terraform configuration with `terraform validate`
- Using CI to catch errors before infrastructure changes are applied
- Keeping infrastructure provisioning out of CI by design

---

## Pipeline Behaviour

- Triggered on push
- Runs Terraform from the `terraform-validation` directory
- Initialises Terraform to load provider schemas
- Checks formatting and validation
- Does not apply or plan infrastructure

---

## Successful Checks

<p align="center">
  <img src="/assets/terraform-ci-checks.png" alt="Successful Terraform validation pipeline run" width="1000">
</p>
