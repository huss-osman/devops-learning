# AWS Account Setup

## Overview

This section focuses on creating an **AWS Account** and preparing the environment required to access AWS services. It introduces the account registration process and explains the information required during setup.

Understanding how to create and secure an AWS account is an important first step before working with **cloud infrastructure**, **networking**, **storage**, **security**, **containers**, and other AWS services.

---

## AWS Account Setup

This section covers the process of creating a new AWS account, verifying ownership, configuring billing information, and preparing access to the AWS Management Console.

## Contents

- [AWS Registration Page](#aws-registration-page)
- [Create a New AWS Account](#create-a-new-aws-account)
- [Verify Email Address](#verify-email-address)
- [Create Root User Password](#create-root-user-password)
- [Contact Information](#contact-information)
- [Billing Information](#billing-information)

---

### AWS Registration Page

Navigate to the AWS homepage:

https://aws.amazon.com/

<p align="center">
  <img width="1000" alt="AWS Registration Page" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration.png" />
</p>

Click **Complete Sign Up** to begin creating a new AWS account.

> [!NOTE]
> AWS provides a Free Tier that allows users to explore many AWS services while learning cloud concepts.

---

### Create a New AWS Account

If you do not already have an AWS account, select **Create a new AWS account**.

<p align="center">
  <img width="1000" alt="Create AWS Account" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(1).png" />
</p>

You will be prompted to enter:

- Root user email address
- AWS account name

AWS uses the email address for account recovery, billing notifications, and security-related communication.

---

### Verify Email Address

After submitting your email address, AWS sends a verification code to confirm ownership.

<p align="center">
  <img width="1000" alt="Verify Email Address" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(2).png" />
</p>

Enter the verification code received by email and select **Verify**.

> [!IMPORTANT]
> Ensure you use an email address that you can access long term, as it will be linked to the AWS root account.

---

### Create Root User Password

Create a secure password for the AWS root account.

<p align="center">
  <img width="1000" alt="Create Root Password" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(3).png" />
</p>

The root account has unrestricted access to all AWS services and resources.

> [!IMPORTANT]
> Store the root account password securely using a password manager and never share it with others.
>
> The root account should only be used for account administration tasks.

---

### Contact Information

Select **Personal** for individual learning environments and provide the required contact details.

<p align="center">
  <img width="1000" alt="AWS Contact Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(4).png" />
</p>

Information requested includes:

- Full name
- Phone number
- Country or region
- Address information

AWS uses this information for account ownership and billing verification.

---

### Billing Information

Provide a valid debit or credit card to complete account registration.

<p align="center">
  <img width="1000" alt="AWS Billing Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(5).png" />
</p>

AWS may perform a small temporary verification charge to validate the payment method.

> [!NOTE]
> AWS Free Tier services are available after account creation, but billing information is still required during registration.
>
> Always monitor AWS usage and billing to avoid unexpected charges.

---

## Next Steps

After registration is complete, it is recommended to:

- Enable Multi-Factor Authentication (MFA)
- Configure billing alerts
- Create an IAM user
- Avoid daily use of the root account
- Review AWS Free Tier limits

These steps help improve **security**, **cost management**, and overall AWS account administration.

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
