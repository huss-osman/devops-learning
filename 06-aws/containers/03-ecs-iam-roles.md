# ECS IAM Roles

## Overview

This section introduces the two primary IAM roles used by Amazon ECS to securely manage permissions between ECS infrastructure, AWS services, and the containers running within a cluster: the **EC2 Instance Profile** and the **ECS Task Role**.

These roles allow ECS infrastructure and running containers to securely interact with AWS services without requiring hardcoded credentials or access keys.

## Contents

* [EC2 Instance Profile](#ec2-instance-profile)
* [ECS Task Role](#ecs-task-role)
* [Why Separate Roles Matter](#why-separate-roles-matter)

---

## EC2 Instance Profile

The **EC2 Instance Profile** is used only with the **EC2 Launch Type**.

The ECS Agent running on each EC2 instance uses this role to communicate with AWS services on behalf of the cluster infrastructure.

Common responsibilities include:

* Registering the instance with the ECS Cluster
* Communicating with the ECS control plane
* Pulling container images from Amazon ECR
* Sending logs to Amazon CloudWatch
* Retrieving configuration values from Systems Manager Parameter Store
* Accessing secrets from AWS Secrets Manager

Without this role, the ECS Agent would not be able to perform its operational responsibilities.

---

## ECS Task Role

The **ECS Task Role** defines the permissions available to containers while they are running.

Unlike the EC2 Instance Profile, this role is attached directly to the ECS Task Definition.

Each application or service can have its own dedicated permissions based on its requirements.

Examples include:

### Task A

* Read objects from Amazon S3
* Send logs to CloudWatch

### Task B

* Read data from DynamoDB
* Write data to DynamoDB

This allows each container to access only the AWS resources it requires.

---

## Why Separate Roles Matter

Separating infrastructure permissions from application permissions improves security and follows AWS security best practices.

Benefits include:

* Reduced attack surface
* Improved permission boundaries
* Better auditing and visibility
* Easier compliance management
* Support for the principle of least privilege

Rather than granting all containers broad access to AWS resources, each workload receives only the permissions it requires to operate.

---

## Key Takeaways

* ECS commonly uses two IAM roles
* EC2 Instance Profiles are used by ECS infrastructure
* ECS Task Roles are used by running containers
* EC2 Instance Profiles are only required for the EC2 Launch Type
* Task Roles are attached to ECS Task Definitions
* Different containers can have different permissions
* IAM Roles remove the need for hardcoded credentials
* Using separate roles improves security and follows least privilege principles

---

## Reflection

Learning about ECS IAM Roles helped me understand the distinction between permissions required by the ECS infrastructure itself and permissions required by the applications running inside containers.

I also learned how separating EC2 Instance Profiles and ECS Task Roles improves security, reduces risk, and enables containers to securely interact with AWS services without exposing credentials.
