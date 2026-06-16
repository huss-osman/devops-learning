# AWS Console Tour

## Overview

This section introduces the **AWS Management Console**, the primary web interface used to create, manage, and monitor AWS resources. It focuses on navigating the console, understanding how AWS services are organised, and identifying the difference between **global services** and **region-scoped services**.

It helps build an understanding of how users interact with AWS services, making the console essential for managing **cloud infrastructure**, **security**, **networking**, **storage**, **compute resources**, and modern **DevOps workflows**.

---

## AWS Console Tour

This section explores the AWS Management Console and the different types of services available within AWS. It introduces the concept of **global services**, **region-scoped services**, and how the console acts as the central location for managing cloud infrastructure.

Understanding how the console is organised is important because almost every AWS service is managed and configured through this interface.

## Contents

* [AWS Management Console](#aws-management-console)
* [AWS Dashboard Widgets](#aws-dashboard-widgets)
* [Searching for AWS Services](#searching-for-aws-services)
* [Global Services](#global-services)
* [Route 53 Example](#route-53-example)
* [Region-Scoped Services](#region-scoped-services)
* [Region Selection](#region-selection)
* [AWS Regional Services Table](#aws-regional-services-table)

---

### AWS Management Console

The **AWS Management Console** is the primary web-based interface used to manage AWS resources and services.

From the console you can:

* Launch **EC2 Instances**
* Create **S3 Buckets**
* Configure **IAM Users and Roles**
* Manage **Networking Resources**
* Deploy **Cloud Infrastructure**
* Monitor AWS Services

<p align="center">
  <img width="1200" alt="AWS Console Overview" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Console_Overview.png" />
</p>

> [!NOTE]
> The AWS Management Console acts as the central control panel for AWS. From here you can provision resources, configure security, manage networking, and monitor cloud infrastructure.

---

### AWS Dashboard Widgets

The AWS Console homepage contains several dashboard widgets that provide quick access to important information.

<p align="center">
  <img width="1200" alt="AWS Dashboard Widgets" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Dashboard_Overview.png" />
</p>

The **Recently Visited** section provides shortcuts to AWS services that have recently been accessed.

Examples include:

* IAM
* Route 53
* EC2
* S3
* ECS
* EKS
* ECR
* CloudFormation

This helps speed up navigation when working with AWS services frequently.

---

The dashboard also provides additional operational information.

<p align="center">
  <img width="1200" alt="AWS Dashboard Health and Cost Widgets" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Dashboard_Overview(1).png" />
</p>

These widgets provide visibility into:

* AWS Health
* Cost and Usage
* AWS Training Resources
* Service Notifications
* Account Health Information

> [!NOTE]
> These dashboard widgets provide a quick overview of account activity, service health, learning resources, and billing information.

---

### Searching for AWS Services

AWS provides a global search feature that allows services to be located quickly.

<p align="center">
  <img width="1200" alt="AWS Service Search" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Dashboard_Overview(2).png" />
</p>

Searching for a service such as **Route 53** immediately displays matching AWS services and features.

This makes it easier to navigate AWS without needing to browse through service categories manually.

> [!NOTE]
> The search bar is one of the fastest ways to access AWS services, especially as the number of AWS services continues to grow.

---

### Global Services

Some AWS services are considered **global services**.

These services are not tied to a specific AWS Region and can be managed globally.

Examples include:

* **IAM (Identity and Access Management)**
* **Route 53**
* **CloudFront**
* **AWS WAF**

These services support infrastructure and resources across AWS environments.

> [!NOTE]
> Global services operate independently of a selected AWS Region. Changes made to these services apply across AWS rather than within a single geographic location.

---

### Route 53 Example

Route 53 is AWS's managed DNS service and is an example of a global service.

<p align="center">
  <img width="1200" alt="AWS Route 53 Service" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Dashboard_Overview(3).png" />
</p>

Route 53 can be used to:

* Register domain names
* Manage DNS records
* Route internet traffic
* Perform health checks
* Support application availability

Because DNS is global in nature, Route 53 operates independently of a specific AWS Region.

---

### Region-Scoped Services

Most AWS services are **region-scoped**.

This means resources must be deployed within a specific AWS Region.

Common examples include:

* **Amazon EC2**
* **AWS Lambda**
* **Amazon RDS**
* **Amazon ECS**
* **Amazon EKS**
* **Amazon ECR**
* **Amazon Rekognition**

When creating these resources, AWS requires a region to be selected.

The selected region determines where infrastructure, applications, and data are deployed.

> [!IMPORTANT]
> Most AWS services are region-scoped. When creating resources such as EC2 instances, databases, storage services, or networking components, you must choose which AWS Region those resources will operate within.

---

### Region Selection

Even while using a global service such as Route 53, the AWS Console still displays the region selector.

<p align="center">
  <img width="1200" alt="AWS Region Selector Route 53" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Dashboard_Overview(4).png" />
</p>

The region selector allows users to switch between AWS Regions when working with regional services.

Examples include:

* Europe (London)
* Europe (Ireland)
* US East (N. Virginia)
* US West (Oregon)
* Asia Pacific (Singapore)
* Asia Pacific (Tokyo)

---

The EC2 service provides another example of a region-scoped service.

<p align="center">
  <img width="1200" alt="AWS EC2 Region Selection" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Dashboard_Overview(5).png" />
</p>

Notice that EC2 resources are associated with a specific AWS Region.

Instances launched in:

* Europe (London)

remain separate from instances launched in:

* US East (N. Virginia)
* Europe (Ireland)
* Asia Pacific (Singapore)

Resources deployed in one region do not automatically appear in another region.

> [!IMPORTANT]
> Always verify the selected AWS Region before deploying infrastructure. Many AWS resources are region-specific and cannot be managed across regions automatically.

---

### AWS Regional Services Table

AWS provides an official reference showing which services are available within each AWS Region.

➡️ AWS Regional Services List

https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/

<p align="center">
<img width="1920" height="1080" alt="AWS Regional Services Table" src="https://github.com/user-attachments/assets/bed36360-c950-43cb-b00e-af4246e55fa3" />
</p>

This reference can be used to verify whether services such as:

* Amazon EC2
* AWS Lambda
* Amazon EKS
* Amazon ECS
* Amazon ECR
* Amazon RDS
* Amazon S3

and many others are available within a particular AWS Region before deploying resources.

> [!NOTE]
> Not every AWS service is available in every region. Always verify service availability before designing production architectures or deployment strategies.

---

## Key Takeaways

* The AWS Management Console is the primary interface for managing AWS resources
* AWS provides dashboard widgets for health, billing, and service monitoring
* The service search bar simplifies navigation across AWS services
* AWS contains both **global services** and **region-scoped services**
* Route 53 is an example of a global service
* EC2 is an example of a region-scoped service
* Resources deployed in one region are typically separate from resources in another region
* Service availability can vary between AWS Regions
* The AWS Regional Services Table can be used to verify service availability before deployment

---

## Reflection

Exploring the AWS Management Console helped me understand how AWS services are organised and managed through a central interface. It also showed how dashboard widgets, service search, health information, and billing tools provide visibility into cloud resources and account activity.

I learned the difference between global services such as Route 53 and region-scoped services such as EC2, Lambda, ECS, EKS, and RDS. Understanding how AWS regions affect deployments, service availability, and infrastructure management is an important foundation for working with cloud environments and modern DevOps workflows.
