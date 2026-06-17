# IAM: Users And Groups

## Overview

This section explores **IAM Users** and **IAM Groups**, the foundational building blocks used to manage access within AWS environments. It focuses on how AWS identities are created, organised, and granted permissions to interact with cloud resources.

Understanding users and groups is important for implementing **access control**, **security**, **identity management**, and the principle of **least privilege** within AWS environments.

## Contents

* [Root Account](#root-account)
* [IAM Users](#iam-users)
* [IAM Groups](#iam-groups)
* [Users and Groups in Practice](#users-and-groups-in-practice)

---

## Root Account

### What Is the Root Account?

When an AWS account is created, AWS automatically creates a **Root Account**.

The root account has complete access to every AWS service and resource within the account.

This includes:

* Creating resources
* Managing billing
* Accessing security settings
* Managing IAM
* Closing the AWS account

> [!IMPORTANT]
> The root account should not be used for day-to-day AWS activities.
>
> AWS recommends enabling MFA on the root account and using an IAM user instead.

---

## IAM Users

### What Are IAM Users?

IAM Users are individual identities created within AWS.

They are typically used to represent:

* Employees
* Administrators
* Developers
* Engineers
* Applications and services

Each user receives their own credentials and can be assigned specific permissions.

This allows AWS administrators to control exactly what each user can access.

> [!NOTE]
> IAM users allow organisations to avoid sharing credentials and provide individual access to AWS resources.

---

## IAM Groups

### What Are IAM Groups?

IAM Groups are collections of IAM Users.

Groups make permission management easier by allowing permissions to be assigned to multiple users at the same time.

Examples include:

* Developers
* Operations
* Security Team
* Audit Team

When permissions are assigned to a group, all users within that group automatically inherit those permissions.

> [!NOTE]
> Groups simplify administration because permissions only need to be managed in one location.

---

## Users and Groups in Practice

AWS provides several important rules when working with users and groups.

Users can:

* Belong to multiple groups
* Belong to a single group
* Exist without belonging to a group

Groups can:

* Contain users

Groups cannot:

* Contain other groups

This flexibility allows organisations to structure permissions based on teams, departments, and responsibilities.

> [!IMPORTANT]
> AWS best practice is to assign permissions to groups whenever possible instead of assigning permissions directly to individual users.

---

## Key Takeaways

* AWS automatically creates a root account during registration
* The root account has unrestricted access to AWS resources
* IAM users represent individual identities
* IAM groups simplify permission management
* Users can belong to multiple groups
* Users do not need to belong to a group
* Groups cannot contain other groups
* Group-based permissions improve scalability and administration
* Following least privilege improves AWS security

---

## Reflection

Learning about **IAM Users** and **IAM Groups** helped me understand how AWS manages identities and access within cloud environments. It highlighted the importance of avoiding root account usage and creating individual identities for users instead.

I also learned how groups simplify permission management by allowing access controls to be assigned once and shared across multiple users. This reinforces the importance of **identity management**, **access control**, and **security best practices** within modern AWS environments and DevOps workflows.
