# Global Infrastructure

## Overview

This section introduces **AWS Global Infrastructure**, the worldwide network of regions, availability zones, edge locations, and services that power AWS. It focuses on how AWS distributes infrastructure globally to provide **reliability**, **availability**, **performance**, and **fault tolerance**.

It helps build an understanding of how AWS infrastructure is organised, how to select appropriate deployment locations, and why concepts such as **latency**, **compliance**, **high availability**, and **global scalability** are fundamental in modern cloud environments.

## Contents

* [AWS Regions](#aws-regions)
* [Choosing the Right Region](#choosing-the-right-region)
* [Availability Zones (AZs)](#availability-zones-azs)
* [Edge Locations](#edge-locations)
* [AWS Infrastructure Explorer](#aws-infrastructure-explorer)
* [AWS Console Overview](#aws-console-overview)
* [Global vs Regional Services](#global-vs-regional-services)

---

### AWS Regions

AWS Regions are physical geographic locations around the world where AWS operates groups of data centres.

Examples include:

* **US East (N. Virginia)**
* **EU West (Ireland)**
* **EU West (London)**
* **Asia Pacific (Singapore)**
* **Asia Pacific (Tokyo)**

Most AWS services are **region-scoped**, meaning resources are deployed into a specific AWS Region.

> [!NOTE]
> Choosing the correct region can significantly impact application performance, compliance requirements, and operational costs.

---

### Choosing the Right Region

When selecting a region, several important factors should be considered.

Common considerations include:

* **Compliance requirements**
* **Proximity to customers**
* **Available AWS services**
* **Regional pricing differences**

The closer infrastructure is to users, the lower the network latency and the better the overall experience.

> [!IMPORTANT]
> Some AWS services and features may not be available in every region. Always verify service availability before designing your architecture.

---

### Availability Zones (AZs)

Each AWS Region contains multiple **Availability Zones (AZs)**.

An Availability Zone consists of one or more physically separate data centres with independent:

* Power
* Cooling
* Networking
* Connectivity

Examples within the London Region include:

* **eu-west-2a**
* **eu-west-2b**
* **eu-west-2c**

Deploying applications across multiple AZs improves:

* **High Availability**
* **Fault Tolerance**
* **Business Continuity**

> [!NOTE]
> If one Availability Zone experiences an outage, workloads deployed across multiple AZs can continue operating with minimal disruption.

---

### Edge Locations

AWS operates hundreds of **Edge Locations** and regional caches around the world.

These locations are used by services such as **CloudFront** to deliver content closer to end users.

Benefits include:

* Reduced latency
* Faster content delivery
* Improved user experience
* Global content distribution

Edge Locations are especially important for:

* Video streaming
* Gaming
* Websites
* Global applications

> [!NOTE]
> Edge Locations act as local caching points, allowing users to access content without always communicating directly with the primary AWS Region.

---

### AWS Infrastructure Explorer

AWS provides an interactive Global Infrastructure map that allows users to explore Regions, Availability Zones, and Edge Locations around the world.

➡️ Official AWS Infrastructure Map:

https://aws.amazon.com/about-aws/global-infrastructure/regions_az/

<p align="center">
<img width="1920" height="1080" alt="AWS Regions and Availability Zones" src="https://github.com/user-attachments/assets/ccc62514-ad97-443f-9bce-4014497dc735" />
</p>

The infrastructure map can be used to:

* View AWS Regions
* Explore Availability Zones
* Identify Edge Locations
* Understand AWS's global footprint

---

### AWS Console Overview

The **AWS Management Console** is the primary interface used to manage AWS resources and services.

<p align="center">
  <img width="1200" alt="AWS Console Overview" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_Console_Overview.png" />
</p>

From the console you can:

* Launch EC2 instances
* Create S3 buckets
* Configure IAM users and roles
* Manage networking resources
* Deploy cloud infrastructure

The AWS Console acts as the central management interface for AWS environments.

---

### Global vs Regional Services

AWS services generally fall into two categories.

#### Global Services

Examples include:

* IAM
* Route 53
* CloudFront
* AWS WAF

These services are available globally and are not tied to a single region.

#### Region-Scoped Services

Examples include:

* EC2
* Lambda
* Elastic Beanstalk
* Rekognition

These services must be deployed within a selected AWS Region.

> [!NOTE]
> Understanding whether a service is global or regional is important when designing cloud architectures and disaster recovery strategies.

---

## Key Takeaways

* AWS infrastructure is distributed across multiple geographic regions
* Regions contain multiple Availability Zones
* Availability Zones improve reliability and fault tolerance
* Edge Locations reduce latency and improve content delivery
* Most AWS services are region-scoped
* Global services operate independently of regions
* Choosing the correct region impacts performance, compliance, and cost

---

## Reflection

Learning about **AWS Global Infrastructure** helped me understand how cloud platforms deliver **high availability**, **fault tolerance**, and **global scalability**. It made it clear how regions, availability zones, and edge locations work together to provide resilient cloud services.

I also learned how deployment location affects **latency**, **compliance**, **performance**, and **costs**. This reinforces the importance of infrastructure design in modern **cloud architecture**, **software delivery**, and **DevOps workflows**.
