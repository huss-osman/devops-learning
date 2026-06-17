# Billing And MFA Setup

## Overview

Before creating AWS resources, it is important to secure the account and implement cost controls. This section focuses on two essential AWS account setup tasks: configuring **Multi-Factor Authentication (MFA)** and setting a **AWS Budget**.

These configurations help protect AWS accounts from unauthorised access while reducing the risk of unexpected charges. Establishing security and billing controls early is considered a cloud best practice and provides a safer foundation for deploying AWS services.

## Contents

* [Why MFA and Budgets Matter](#why-mfa-and-budgets-matter)
* [Setting Up MFA](#setting-up-mfa)
* [Verifying MFA Configuration](#verifying-mfa-configuration)
* [Creating an AWS Budget](#creating-an-aws-budget)
* [Verifying Budget Creation](#verifying-budget-creation)
* [IAM Setup Walkthrough](#iam-setup-walkthrough)

---

### Why MFA and Budgets Matter

AWS accounts can create real cloud infrastructure that may generate costs.

Without a budget configured, unexpected spending may go unnoticed until a billing statement is received.

Similarly, accounts protected only by a password remain vulnerable if credentials become compromised.

Using MFA provides an additional security layer by requiring:

* Something you know (**password**)
* Something you have (**MFA device**)

> [!IMPORTANT]
> Every AWS account should have MFA enabled and a budget configured before deploying resources.

---

### Setting Up MFA

MFA can be configured through the AWS Security Credentials page.

From the AWS Console:

1. Click the account menu
2. Select **Security Credentials**

<p align="center">
  <img width="1200" alt="AWS Security Credentials" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup.png" />
</p>

---

Within Security Credentials, locate the MFA section.

Click **Assign MFA Device**.

<p align="center">
  <img width="1200" alt="Assign MFA Device" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(1).png" />
</p>

---

Provide a device name and select **Authenticator App**.

Examples of supported authenticator applications include:

* Google Authenticator
* Microsoft Authenticator
* Authy
* Duo Mobile

<p align="center">
  <img width="1200" alt="Select MFA Device Type" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(2).png" />
</p>

---

AWS generates a QR code that can be scanned using the authenticator application.

After scanning:

1. Enter the first generated code
2. Wait for the code to refresh
3. Enter the second generated code
4. Click **Add MFA**

<p align="center">
  <img width="1200" alt="Configure MFA Application" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(3).png" />
</p>

> [!NOTE]
> The authenticator application generates time-based one-time passwords (TOTP) that are required during sign-in.

---

### Verifying MFA Configuration

After successful configuration, AWS displays the registered MFA device.

<p align="center">
  <img width="1200" alt="MFA Successfully Configured" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(4).png" />
</p>

This confirms that MFA protection has been enabled for the account.

> [!IMPORTANT]
> MFA significantly improves account security by preventing access with only a password.

---

### Creating an AWS Budget

AWS Budgets can be used to monitor spending and send alerts when spending thresholds are reached.

From the AWS Console search bar:

Search for:

**Billing and Cost Management**

<p align="center">
  <img width="1200" alt="Billing and Cost Management Search" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(5).png" />
</p>

---

Navigate to:

**Budgets**

within the Billing and Cost Management console.

<p align="center">
  <img width="1200" alt="AWS Budgets Navigation" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(6).png" />
</p>

---

Click:

**Create a Budget**

<p align="center">
  <img width="1200" alt="Create Budget" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(7).png" />
</p>

---

Select:

* Monthly Cost Budget

Configure:

* Budget Name
* Budget Amount
* Notification Email Address

Example:

* Budget Name: BudgetAlert1
* Budget Amount: $5

<p align="center">
  <img width="1200" alt="Budget Configuration" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(8).png" />
</p>

AWS automatically creates notification thresholds that trigger email alerts when spending approaches or exceeds the configured budget.

> [!NOTE]
> Budget values can be adjusted later based on project requirements and expected cloud usage.

---

### Verifying Budget Creation

After creation, the budget appears within the AWS Budgets dashboard.

<p align="center">
  <img width="1200" alt="Budget Successfully Created" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_MFA_Billing_setup(9).png" />
</p>

This dashboard provides visibility into:

* Budget Amount
* Current Spend
* Forecasted Spend
* Budget Status

If spending exceeds configured thresholds, AWS sends email notifications to the specified recipients.

> [!IMPORTANT]
> Budgets do not automatically stop AWS resources. They provide alerts so action can be taken before costs increase further.

---

### IAM Setup Walkthrough

The following walkthrough demonstrates how to configure an AWS IAM environment and apply foundational access management concepts.

<p align="center">
https://github.com/user-attachments/assets/29b1c189-9896-48c7-9136-d6a93ea06939
</p>

> [!NOTE]
> This walkthrough covers:
>
> * Creating IAM users
> * Creating IAM groups
> * Assigning permissions
> * Applying IAM policies
> * Understanding IAM roles
> * Following the principle of least privilege
>
> These are foundational concepts used to manage access and security within AWS environments.

---

## Key Takeaways

* MFA adds an additional layer of security to AWS accounts
* Authenticator applications generate temporary verification codes
* AWS supports Google Authenticator, Microsoft Authenticator, Authy, and similar applications
* MFA should be configured immediately after creating an AWS account
* AWS Budgets help monitor cloud spending
* Budget alerts provide early warning of unexpected costs
* Budgets can send notifications when spending approaches predefined thresholds
* Budget alerts help prevent accidental overspending
* Budgets do not automatically shut down resources
* Security and cost management should be configured before deploying infrastructure

---

## Reflection

Configuring MFA and AWS Budgets demonstrated the importance of securing cloud accounts and managing cloud spending from the beginning. While creating resources is an important part of learning AWS, protecting the account and monitoring costs are equally important responsibilities.

I learned how MFA provides an additional security layer through time-based authentication codes and how AWS Budgets can be used to monitor spending and generate alerts before costs become a problem. These controls help establish good cloud management practices and are important foundations for working with AWS in both learning and production environments.
