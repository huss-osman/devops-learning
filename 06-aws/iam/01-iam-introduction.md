# IAM Introduction

## Overview

This section introduces **AWS Identity and Access Management (IAM)**, the service responsible for controlling authentication and authorisation across AWS environments. It focuses on how IAM enables organisations to manage users, permissions, and access to resources.

IAM is one of the most important services in AWS because every action performed within an AWS account is governed by permissions. Understanding IAM is essential for securing cloud environments and implementing access control following security best practices.

## Contents

* [What You'll Learn](#what-youll-learn)
* [IAM Learning Path](#iam-learning-path)

---

## What You'll Learn

This module covers the fundamental concepts of **AWS Identity and Access Management (IAM)** and how access is controlled within AWS environments.

You'll learn how AWS manages identities, how permissions are assigned, how policies define access controls, and how security features such as **Multi-Factor Authentication (MFA)** help protect AWS accounts from unauthorised access.

> [!NOTE]
> IAM is used throughout almost every AWS service. Whether working with EC2, S3, Lambda, ECS, EKS, Route 53, or VPCs, IAM plays a critical role in controlling access and securing resources.

---

## IAM Learning Path

This module is structured to build IAM knowledge step by step.

Topics include:

* IAM Introduction
* Users and Groups
* Permissions
* IAM Policies
* Password Policies & MFA
* Access Keys
* IAM Roles
* Security Best Practices

➡️ [View IAM](../iam)

> [!IMPORTANT]
> IAM sits at the centre of AWS security. Every AWS service relies on IAM to determine who can access resources and what actions they are authorised to perform. Understanding IAM is fundamental when working with AWS, cloud infrastructure, and DevOps environments.

---

## Key Takeaways

* IAM stands for Identity and Access Management
* IAM controls authentication and authorisation across AWS
* Users represent individual identities
* Groups simplify permission management for multiple users
* Policies define allowed and denied actions
* MFA provides an additional security layer
* Roles provide temporary access without long-term credentials
* IAM follows the principle of least privilege
* Nearly every AWS service integrates with IAM
* IAM is one of the most important AWS services for security

---

## Reflection

Learning about **AWS IAM** helped me understand how access control and security are implemented within cloud environments. It highlighted the importance of managing identities correctly and ensuring users only receive the permissions required to perform their tasks.

I also learned how **users**, **groups**, **policies**, **MFA**, and **roles** work together to secure AWS resources. This reinforces the importance of strong identity management practices when building secure cloud infrastructure and modern DevOps environments.
