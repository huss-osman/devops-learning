# IAM Roles

## Overview

This section introduces **IAM Roles**, a secure AWS identity mechanism that allows AWS services to access other AWS resources without requiring long-term credentials such as passwords or access keys. IAM roles provide temporary permissions that can be assumed when needed.

It focuses on how AWS services such as **EC2**, **Lambda**, and **CloudFormation** use IAM roles to securely interact with other AWS services while following security best practices and avoiding hard-coded credentials.

## Contents

* [What Are IAM Roles?](#what-are-iam-roles)
* [IAM Roles for AWS Services](#iam-roles-for-aws-services)
* [Common Use Cases](#common-use-cases)

---

## What Are IAM Roles?

An IAM role is an AWS identity that provides temporary permissions to perform actions on AWS resources.

Unlike IAM users, roles do not have:

* Passwords
* Access Keys
* Permanent Credentials

Instead, roles are assumed when access is required and AWS automatically provides temporary credentials.

This helps improve security by eliminating the need to store long-term credentials within applications or services.

> [!IMPORTANT]
> IAM roles should be used whenever AWS services need to access other AWS services.

---

## IAM Roles for AWS Services

AWS services often need permission to perform actions on your behalf.

Examples include:

* EC2 reading objects from an S3 bucket
* Lambda writing logs to CloudWatch
* CloudFormation creating AWS resources
* Applications accessing DynamoDB tables

Instead of storing access keys inside these services, IAM roles can be attached to them and AWS automatically manages temporary credentials.

This approach is more secure, easier to manage, and follows AWS security best practices.

---

## Common Use Cases

### EC2 Instance Roles

IAM roles can be attached directly to EC2 instances.

This allows instances to access AWS services such as:

* Amazon S3
* DynamoDB
* Systems Manager
* Secrets Manager

without storing credentials on the server.

---

### Lambda Function Roles

Lambda functions often interact with other AWS services.

Examples include:

* Writing logs to CloudWatch
* Reading data from DynamoDB
* Uploading files to S3
* Publishing messages to SNS

IAM roles provide the permissions required for these actions.

---

### CloudFormation Roles

CloudFormation frequently creates and manages resources across multiple AWS services.

By assigning an IAM role, CloudFormation can:

* Create resources
* Update infrastructure
* Delete resources
* Manage AWS services securely

without exposing credentials.

> [!NOTE]
> IAM roles allow AWS services to securely access other AWS services using temporary credentials managed automatically by AWS.

---

## Key Takeaways

* IAM roles provide temporary AWS credentials
* Roles do not require passwords or access keys
* IAM roles improve security by eliminating hard-coded credentials
* EC2 instances can assume roles to access AWS resources
* Lambda functions use roles to interact with AWS services
* CloudFormation uses roles to manage infrastructure securely
* Roles follow AWS security best practices
* AWS automatically manages temporary credentials for assumed roles

---

## Reflection

Learning about IAM roles helped me understand how AWS services securely communicate with one another without storing access keys or passwords. Rather than embedding credentials inside applications or infrastructure, AWS can provide temporary permissions through roles whenever access is required.

I also learned how services such as EC2, Lambda, and CloudFormation rely on IAM roles to perform actions across AWS environments. This highlighted the importance of temporary credentials, least privilege access, and secure service-to-service communication in modern cloud architectures.
