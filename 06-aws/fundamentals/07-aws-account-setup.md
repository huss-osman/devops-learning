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
- [Phone Verification](#phone-verification)
- [Verify Phone Number](#verify-phone-number)
- [Select a Support Plan](#select-a-support-plan)
- [Account Activation Complete](#account-activation-complete)
- [AWS Management Console](#aws-management-console)
- [Selecting an AWS Region](#selecting-an-aws-region)
- [AWS Account Information](#aws-account-information)
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
> AWS provides Free Tier services that allow users to learn cloud technologies and experiment with AWS services while keeping costs low.

---

### AWS Sign In Page

After selecting **Complete Sign Up**, AWS redirects you to the sign-in page.

<p align="center">
  <img width="1000" alt="AWS Sign In Page" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(1).png" />
</p>

From here you can:

- Sign in to an existing AWS account
- Create a new AWS account

Select **Create a new AWS account** if you do not already have an account.

---

### AWS Account Registration

Enter the following details:

- Root user email address
- AWS account name

<p align="center">
  <img width="1000" alt="AWS Account Registration" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(2).png" />
</p>

The root user email address becomes the primary owner of the AWS account.

AWS uses this email address for:

- Account recovery
- Security notifications
- Billing notifications
- Administrative account access

> [!IMPORTANT]
> Use an email address that you can access long term because it becomes permanently associated with the AWS root account.

---

### Email Verification

AWS sends a verification code to the email address provided during registration.

<p align="center">
  <img width="1000" alt="AWS Email Verification" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(3).png" />
</p>

Enter the verification code and select **Verify**.

> [!NOTE]
> Verification helps AWS confirm ownership of the email address before the account is created.

---

### Create Root Password

Create a secure password for the AWS root account.

<p align="center">
  <img width="1000" alt="AWS Root Password" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(4).png" />
</p>

The root account has unrestricted access to all AWS resources and services.

> [!IMPORTANT]
> Store the root password securely using a password manager.
>
> The root account should only be used for account administration tasks and emergencies.

---

### Contact Information

Select **Personal** and provide the required contact details.

<p align="center">
  <img width="1000" alt="AWS Contact Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(5).png" />
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
  <img width="1000" alt="AWS Billing Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(6).png" />
</p>

AWS may perform a temporary verification charge to validate the payment method.

> [!NOTE]
> Billing information is required even when using AWS Free Tier services.

---

### Phone Verification

AWS requires phone verification before activating the account.

<p align="center">
  <img width="1000" alt="AWS Phone Verification" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(7).png" />
</p>

Choose either:

- Text Message (SMS)
- Voice Call

Then provide:

- Country code
- Mobile number
- CAPTCHA verification

AWS sends a verification code to confirm your identity.

> [!NOTE]
> Phone verification helps AWS prevent fraudulent account creation and secure new AWS accounts.

---

### Verify Phone Number

Enter the verification code received via SMS or voice call.

<p align="center">
  <img width="1000" alt="AWS Verify Phone Number" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(8).png" />
</p>

Once the code has been entered successfully, AWS proceeds to the final registration stage.

---

### Select a Support Plan

Choose an AWS Support Plan.

<p align="center">
  <img width="1000" alt="AWS Support Plan" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(9).png" />
</p>

For personal projects and learning environments, select:

- **Basic Support – Free**

Basic Support includes:

- AWS documentation access
- AWS Health Dashboard
- Billing support
- Trusted Advisor recommendations

> [!NOTE]
> Basic Support is sufficient for most AWS learners, labs, and personal cloud projects.

---

### Account Activation Complete

After completing registration, AWS begins activating the account.

<p align="center">
  <img width="1000" alt="AWS Registration Complete" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(10).png" />
</p>

Account activation usually takes several minutes.

AWS sends an email once the account is ready to use.

---

### AWS Management Console

Once activated, you can access the AWS Management Console.

<p align="center">
  <img width="1200" alt="AWS Management Console" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(11).png" />
</p>

The AWS Console acts as the central management interface for AWS services.

From here you can access services such as:

- Amazon EC2
- Amazon S3
- AWS IAM
- AWS Lambda
- AWS CloudFormation
- Amazon ECS
- Amazon ECR
- Amazon EKS
- Amazon Route 53

> [!NOTE]
> The search bar allows you to quickly locate and access AWS services from anywhere within the console.

---

### Selecting an AWS Region

Most AWS services are region-scoped, meaning resources are deployed within a specific AWS Region.

<p align="center">
  <img width="1200" alt="AWS Region Selection" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(12).png" />
</p>

Examples include:

- US East (N. Virginia)
- US West (Oregon)
- Europe (London)
- Europe (Ireland)
- Asia Pacific (Singapore)
- Asia Pacific (Tokyo)

Choosing the correct region affects:

- Latency
- Compliance requirements
- Service availability
- Pricing

> [!IMPORTANT]
> Always verify which region you are currently working in before deploying resources.

---

### AWS Account Information

The account menu provides access to important account settings and administration features.

<p align="center">
  <img width="1200" alt="AWS Account Information" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Registration(13).png" />
</p>

From this menu you can access:

- Account settings
- Billing and Cost Management
- Service Quotas
- Security Credentials
- AWS Organizations

Your AWS Account ID is also displayed here.

> [!NOTE]
> AWS Account IDs are commonly used when configuring IAM roles, cross-account permissions, and cloud resources.

---

### Next Steps After Registration

Before deploying resources, AWS recommends securing the account.

Recommended actions:

- Enable Multi-Factor Authentication (MFA)
- Configure Billing Alerts
- Create an IAM Administrator User
- Avoid using the Root Account daily
- Review AWS Free Tier limits

> [!IMPORTANT]
> Never use the root account for routine AWS administration.
>
> Instead, create an IAM user with administrative permissions and use that account for daily activities.

---

## Key Takeaways

- An AWS account is required before using AWS services
- Email and phone verification confirm account ownership
- The root account has unrestricted access to AWS resources
- Billing information is required during registration
- AWS offers a free Basic Support plan suitable for learning
- The AWS Management Console is the central interface for managing services
- Most AWS services are region-scoped
- MFA and IAM users should be configured immediately after account creation
- Billing alerts help prevent unexpected cloud costs

---

## Reflection

Creating an AWS account provided valuable insight into the onboarding process used by cloud providers. It highlighted the importance of account ownership verification, billing controls, security best practices, and responsible cloud administration.

I also learned how the AWS Management Console acts as the central hub for managing cloud resources and how region selection affects service availability, latency, compliance, and costs.
