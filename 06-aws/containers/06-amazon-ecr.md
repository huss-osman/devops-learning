# Amazon ECR

## Overview

This section introduces **Amazon Elastic Container Registry (Amazon ECR)**, AWS's fully managed container image registry service used to store, manage, and distribute Docker container images.

Amazon ECR integrates closely with services such as **Amazon ECS**, **Amazon EKS**, and **AWS Fargate**, making it a core component of container-based architectures on AWS.

## Contents

* [What is Amazon ECR?](#what-is-amazon-ecr)
* [Private and Public Repositories](#private-and-public-repositories)
* [ECS Integration](#ecs-integration)
* [Security and IAM Permissions](#security-and-iam-permissions)
* [Image Scanning](#image-scanning)
* [Image Versioning](#image-versioning)
* [Lifecycle Policies](#lifecycle-policies)

---

## What is Amazon ECR?

Amazon ECR is AWS's managed container image registry service.

It allows teams to:

* Store container images
* Manage image repositories
* Push images to AWS
* Pull images into applications and services

ECR acts as a central location for container images used across environments such as development, testing, and production.

---

## Private and Public Repositories

Amazon ECR supports both private and public repositories.

### Private Repositories

Private repositories are used for:

* Internal applications
* Proprietary software
* Sensitive workloads
* Production environments

Access is restricted using IAM permissions.

---

### Public Repositories

Public repositories are used for:

* Open-source projects
* Public container images
* Community sharing

AWS provides the **Amazon ECR Public Gallery** for publicly accessible images.

---

## ECS Integration

Amazon ECR integrates natively with Amazon ECS.

ECS Tasks can automatically pull container images directly from ECR during deployment.

Example workflow:

```text
Docker Build
      ↓
Docker Image
      ↓
Push to Amazon ECR
      ↓
Amazon ECS Pulls Image
      ↓
Container Starts
```

This integration simplifies container deployments and removes the need for external registries.

---

## Security and IAM Permissions

Access to Amazon ECR is controlled using AWS IAM.

IAM permissions determine:

* Who can push images
* Who can pull images
* Which services can access repositories

If ECS cannot retrieve an image, IAM permissions are often one of the first areas to investigate.

Behind the scenes, Amazon ECR stores images securely using Amazon S3 infrastructure.

---

## Image Scanning

Amazon ECR supports built-in vulnerability scanning.

Image scanning helps identify:

* Known vulnerabilities
* Outdated packages
* Security risks
* Common exposures and misconfigurations

This allows security issues to be identified earlier in the deployment lifecycle.

---

## Image Versioning

Container images in ECR can be tagged using versions.

Examples include:

```text
latest
v1.0
v1.1
v2.0
production
staging
```

Image tags make it easier to manage deployments, rollbacks, and application releases.

---

## Lifecycle Policies

Amazon ECR supports lifecycle policies that automatically remove unused images.

Lifecycle policies can help:

* Reduce storage costs
* Remove outdated images
* Keep repositories organised
* Improve repository management

Example:

```text
Delete images older than 90 days.
Keep only the most recent 10 image versions.
```

---

## Key Takeaways

* Amazon ECR is AWS's managed container image registry
* ECR stores Docker container images
* ECR supports both private and public repositories
* ECR integrates closely with Amazon ECS and AWS Fargate
* IAM controls access to repositories and images
* ECR supports vulnerability scanning
* Image tags provide version control for containers
* Lifecycle policies automate repository cleanup
* ECR is backed by Amazon S3 infrastructure
* ECR is a core component of container-based AWS architectures

---

## Reflection

Learning about Amazon ECR helped me understand where container images are stored and how AWS services retrieve them during deployments.

I also learned how ECR integrates with ECS, IAM, image scanning, and lifecycle policies to provide a secure and scalable container registry for modern cloud-native applications.
