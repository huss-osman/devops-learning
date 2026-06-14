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
* [Global Services](#global-services)
* [Region-Scoped Services](#region-scoped-services)
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

### Region-Scoped Services

Most AWS services are **region-scoped**.

This means resources must be deployed within a specific AWS Region.

Common examples include:

* **Amazon EC2**
* **Elastic Beanstalk**
* **AWS Lambda**
* **Amazon Rekognition**

When creating these resources, AWS requires a region to be selected.

The selected region determines where infrastructure, applications, and data are deployed.

> [!IMPORTANT]
> Most AWS services are region-scoped. When creating resources such as EC2 instances, databases, storage services, or networking components, you must choose which AWS Region those resources will operate within.

---

### AWS Regional Services Table

AWS provides an official reference showing which services are available within each AWS Region.

➡️ AWS Regional Services List

https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/

<p align="center">
<img width="1920" height="1080" alt="AWS_Services_Walkthrough" src="https://github.com/user-attachments/assets/bed36360-c950-43cb-b00e-af4246e55fa3" />
</p>

This reference can be used to verify whether services such as **Amazon EC2**, **AWS Lambda**, **Amazon EKS**, **Amazon ECS**, **Amazon ECR**, **Amazon RDS**, and many others are available within a particular AWS Region before deploying resources.

> [!NOTE]
> Not every AWS service is available in every region. Always verify service availability before designing production architectures or deployment strategies.

---

## Key Takeaways

* The AWS Management Console is the primary interface for managing AWS resources
* AWS services are accessed and configured through the console
* AWS contains both **global services** and **region-scoped services**
* Global services operate independently of regions
* Region-scoped services require deployment within a selected AWS Region
* Service availability can vary between AWS Regions
* Understanding service scope is important when designing cloud architectures

---

## Reflection

Learning about the **AWS Management Console** helped me understand how AWS services are organised and managed through a central interface. It made it easier to visualise how **compute**, **storage**, **networking**, and **security** services are accessed and configured within cloud environments.

I also learned the difference between **global services** and **region-scoped services**, and why service availability can vary between regions. This reinforces the importance of understanding AWS architecture when working with **cloud infrastructure**, **application deployments**, and **DevOps workflows**.
