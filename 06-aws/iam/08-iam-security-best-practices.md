# IAM Security Best Practices

## Overview

This section introduces AWS IAM security tools and best practices used to secure AWS environments. It focuses on monitoring user credentials, auditing permissions, enforcing authentication controls, and following security principles that reduce risk across AWS accounts.

Understanding IAM security best practices is essential because identity and access management sits at the centre of AWS security. Proper user management, least privilege access, MFA enforcement, and regular permission reviews help organisations maintain secure and well-governed cloud environments.

## Contents

* [IAM Credentials Report](#iam-credentials-report)
* [IAM Access Advisor](#iam-access-advisor)
* [IAM Security Best Practices](#iam-security-best-practices)

---

## IAM Credentials Report

The IAM Credentials Report provides an account-wide view of IAM users and their credentials.

The report contains information such as:

* Password status
* Password last changed
* MFA status
* Access key status
* Access key last used

This report helps administrators quickly review the security posture of IAM users across an AWS account.

> [!NOTE]
> IAM Credentials Reports are useful for auditing user accounts and identifying security improvements.

---

## IAM Access Advisor

IAM Access Advisor provides visibility into which AWS services a user, group, or role can access.

It also displays:

* Services the identity has permission to access
* When each service was last accessed

This information helps administrators identify permissions that are no longer required.

Benefits include:

* Permission reviews
* Security audits
* Removing unused access
* Supporting least privilege principles

> [!IMPORTANT]
> Regularly reviewing Access Advisor data can help reduce excessive permissions and improve account security.

---

## IAM Security Best Practices

AWS recommends following several IAM security best practices.

### Avoid Using the Root Account

The root account has unrestricted access to all AWS resources.

Best practice is to:

* Use the root account only for initial setup
* Enable MFA on the root account
* Avoid daily administrative use

---

### One User Per Person

Each individual should have their own IAM user.

Benefits include:

* Accountability
* Auditing
* Improved security
* Easier access management

Sharing accounts should be avoided.

---

### Use Groups for Permissions

Rather than assigning permissions directly to individual users:

* Create groups
* Assign permissions to groups
* Add users to appropriate groups

This approach simplifies administration and scales more effectively.

---

### Enforce Strong Password Policies

Password policies should require:

* Minimum password length
* Uppercase letters
* Lowercase letters
* Numbers
* Special characters

AWS can also prevent password reuse.

---

### Enable MFA

Multi-Factor Authentication should be enabled for:

* Root Accounts
* Administrative Users
* Privileged Users

MFA provides an additional security layer beyond passwords.

---

### Use IAM Roles for AWS Services

When AWS services need access to other AWS services:

* Use IAM Roles
* Avoid hard-coded credentials
* Use temporary permissions

Examples include:

* EC2 Instance Roles
* Lambda Execution Roles
* CloudFormation Roles

---

### Secure Access Keys

Access Keys should:

* Be kept private
* Never be shared
* Never be committed to Git repositories
* Be rotated regularly

Access Keys should only be used when programmatic access is required.

---

### Follow Least Privilege

Grant only the permissions required to perform a task.

Avoid:

* Excessive permissions
* Unused permissions
* Administrative access where unnecessary

Least privilege reduces security risks and limits potential damage from compromised accounts.

---

### Audit Permissions Regularly

Regular audits should be performed using:

* IAM Credentials Report
* IAM Access Advisor

This helps ensure users and services retain only the permissions they require.

> [!IMPORTANT]
> Security is an ongoing process. Regular reviews of users, permissions, credentials, and access patterns help maintain a secure AWS environment.

---

## Key Takeaways

* IAM Credentials Reports provide account-wide credential visibility
* IAM Access Advisor helps identify unused permissions
* Root account usage should be minimised
* Each individual should have their own IAM user
* Groups simplify permission management
* Strong password policies improve security
* MFA should be enabled for all privileged users
* IAM Roles should be used instead of hard-coded credentials
* Access Keys must be protected and rotated regularly
* Least privilege is a fundamental AWS security principle
* Regular permission audits improve account security

---

## Reflection

Learning about IAM security tools and best practices highlighted how important identity and access management is within AWS. While creating users and assigning permissions is straightforward, maintaining a secure environment requires ongoing monitoring, auditing, and enforcement of security controls.

I also learned how tools such as IAM Credentials Report and IAM Access Advisor provide visibility into account activity and permissions. Combined with practices such as MFA, least privilege, IAM roles, and regular audits, these controls form the foundation of a secure AWS environment.
