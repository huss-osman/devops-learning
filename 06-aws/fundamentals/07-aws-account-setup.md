# AWS Account Setup

## Overview

This section focuses on creating an **AWS Account** and preparing the environment required to access AWS services. It introduces the account registration process and explains the information required during setup.

Understanding how to create and secure an AWS account is an important first step before working with **cloud infrastructure**, **networking**, **storage**, **security**, **containers**, and other AWS services.

---

## AWS Account Setup

This section covers the process of creating a new AWS account, verifying ownership, configuring billing information, and preparing access to the AWS Management Console.

## Contents

- [AWS Registration Page](#aws-registration-page)
- [AWS Sign In Page](#aws-sign-in-page)
- [AWS Account Registration](#aws-account-registration)
- [Email Verification](#email-verification)
- [Create Root Password](#create-root-password)
- [Contact Information](#contact-information)
- [Billing Information](#billing-information)
- [Next Steps After Registration](#next-steps-after-registration)

---

### AWS Registration Page

Navigate to the AWS homepage:

https://aws.amazon.com/

<p align="center">
  <img width="1000" alt="AWS Registration Page" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration.png" />
</p>

To begin creating a new AWS account, select **Complete Sign Up**.

> [!NOTE]
> AWS provides Free Tier services that allow users to learn and explore cloud technologies without immediately incurring charges.

---

### AWS Sign In Page

After selecting **Complete Sign Up**, AWS redirects you to the sign-in page.

<p align="center">
  <img width="1000" alt="AWS Sign In Page" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(1).png" />
</p>

From here you can either:

- Sign in to an existing AWS account
- Create a new AWS account

For new users, select **Create a new AWS account**.

---

### AWS Account Registration

Enter the following details:

- Root user email address
- AWS account name

<p align="center">
  <img width="1000" alt="AWS Account Registration" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(2).png" />
</p>

The root user email address becomes the primary account owner and is used for:

- Account recovery
- Security notifications
- Billing communications
- Administrative access

> [!IMPORTANT]
> Use an email address that you can access long term because it becomes associated with the AWS root account.

---

### Email Verification

AWS sends a verification code to the email address provided during registration.

<p align="center">
  <img width="1000" alt="AWS Email Verification" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(3).png" />
</p>

Enter the verification code and select **Verify** to continue.

> [!NOTE]
> Verification helps AWS confirm ownership of the email address before the account is created.

---

### Create Root Password

Create a secure password for the AWS root account.

<p align="center">
  <img width="1000" alt="Create Root Password" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(4).png" />
</p>

The root account has unrestricted permissions across the AWS environment.

> [!IMPORTANT]
> Store the root password securely.
>
> The root account should only be used for account administration and emergency tasks.
>
> Day-to-day AWS activities should be performed using IAM users.

---

### Contact Information

Select **Personal** and complete the required contact details.

<p align="center">
  <img width="1000" alt="AWS Contact Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(5).png" />
</p>

Information requested includes:

- Full name
- Phone number
- Country or region
- Address information

AWS uses this information for account ownership and verification purposes.

---

### Billing Information

Provide a valid debit or credit card to complete registration.

<p align="center">
  <img width="1000" alt="AWS Billing Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(6).png" />
</p>

AWS may perform a temporary verification charge to confirm the payment method.

> [!NOTE]
> Even when using AWS Free Tier services, billing information is still required during account creation.

---

### Next Steps After Registration

Once registration is complete, AWS recommends securing the account before creating resources.

Recommended actions:

- Enable Multi-Factor Authentication (MFA)
- Configure AWS Billing Alerts
- Create an IAM Administrator User
- Avoid using the Root Account daily
- Review AWS Free Tier limits

> [!IMPORTANT]
> Never use the root account for launching EC2 instances, creating S3 buckets, or managing infrastructure on a daily basis.
>
> Create an IAM user with administrative permissions and use that account instead.

---

## Key Takeaways

- An AWS account is required before using AWS services
- Email verification confirms ownership of the account
- The root account has unrestricted access to AWS resources
- Billing information is required during registration
- MFA should be enabled immediately after account creation
- Billing alerts help prevent unexpected charges
- IAM users should be used instead of the root account for day-to-day activities

---

## Reflection

Creating an **AWS account** helped me understand the initial setup process required before working with cloud services. It highlighted the importance of **account security**, **identity management**, **billing controls**, and responsible cloud administration.

I also learned why securing the root account and enabling MFA are considered AWS best practices. This reinforces the importance of **security**, **governance**, **cost management**, and proper account configuration in modern **cloud environments** and **DevOps workflows**.
