# VPC Endpoints

## Overview

This section introduces **VPC Endpoints**, powered by **AWS PrivateLink**, which enable private connectivity between resources inside a VPC and supported AWS services without traversing the public internet.

By using VPC Endpoints, applications can securely communicate with AWS services such as Amazon S3 and Amazon SNS while remaining entirely within the AWS network, improving both security and network architecture.

## Contents

* [What is a VPC Endpoint?](#what-is-a-vpc-endpoint)
* [How VPC Endpoints Work](#how-vpc-endpoints-work)
* [Benefits of VPC Endpoints](#benefits-of-vpc-endpoints)
* [Types of VPC Endpoints](#types-of-vpc-endpoints)
* [Traditional Access vs VPC Endpoint](#traditional-access-vs-vpc-endpoint)
* [Troubleshooting](#troubleshooting)

---

## What is a VPC Endpoint?

A **VPC Endpoint** is a private connection between your VPC and supported AWS services, powered by **AWS PrivateLink**.

Instead of sending traffic across the public internet, communication remains entirely on the AWS network.

This allows resources inside both public and private subnets to securely access AWS services without requiring public internet connectivity.

Common services include:

* Amazon S3
* Amazon SNS
* Amazon SQS
* Amazon DynamoDB
* AWS Systems Manager (SSM)

---

## How VPC Endpoints Work

Without a VPC Endpoint, resources in a private subnet typically require a NAT Gateway and Internet Gateway to reach AWS services.

With a VPC Endpoint, traffic remains entirely within the AWS network.

Example architecture:

<p align="center">
  <img width="600" alt="VPC Endpoint Architecture" src="https://github.com/user-attachments/assets/8b6b95ce-a786-4121-baf1-8b1e6430dde5" /> 
</p>

This approach improves security by eliminating unnecessary internet exposure.

---

## Benefits of VPC Endpoints

VPC Endpoints provide several advantages:

* Private communication with AWS services
* Powered by AWS PrivateLink
* No Internet Gateway required
* No NAT Gateway required
* Improved security
* Horizontally scalable
* Highly available
* Reduced exposure to the public internet
* Simplified network architecture

Because traffic never leaves the AWS network, VPC Endpoints are commonly used in security-sensitive and compliance-focused environments.

---

## Types of VPC Endpoints

AWS provides two types of VPC Endpoints depending on the AWS service being accessed.

### Interface Endpoint

Interface Endpoints are powered by **AWS PrivateLink**.

When an Interface Endpoint is created, AWS provisions an **Elastic Network Interface (ENI)** inside your subnet. This ENI provides a private IP address that acts as the entry point for communication with supported AWS services.

<p align="center">
  <img width="700" alt="Interface Endpoint" src="https://github.com/user-attachments/assets/aed01eb0-6633-4246-b129-e6a12c74156a" /> 
</p>

Characteristics include:

* Powered by AWS PrivateLink
* Creates an Elastic Network Interface (ENI)
* Supports most AWS services
* Uses private IP addresses
* Requires Security Groups
* Charged per hour and per GB of processed data

Common supported services include:

* Amazon SNS
* Amazon SQS
* AWS Systems Manager (SSM)
* Amazon CloudWatch
* Amazon EventBridge

---

### Gateway Endpoint

Gateway Endpoints provide private connectivity without creating an ENI.

Instead, AWS creates a gateway that is referenced within the subnet's Route Table. Traffic destined for supported services is automatically routed through the Gateway Endpoint while remaining on the AWS network.

<p align="center">
  <img width="700" alt="Gateway Endpoint" src="https://github.com/user-attachments/assets/787c0ae1-b2ee-434f-9d02-c2fe881fa1bb" /> 

</p>

Characteristics include:

* No ENI is created
* Configured through Route Tables
* No Security Groups required
* Free of charge
* Supports only Amazon S3 and Amazon DynamoDB

Gateway Endpoints provide the simplest and most cost-effective method for privately accessing these services.

---

## Traditional Access vs VPC Endpoint

There are two common ways for private resources to access AWS services.

### Traditional Access

```text
Private EC2
      │
      ▼
NAT Gateway
      │
      ▼
Internet Gateway
      │
      ▼
AWS Service
```

Requires:

* NAT Gateway
* Internet Gateway

---

### VPC Endpoint

```text
Private EC2
      │
      ▼
VPC Endpoint
      │
      ▼
AWS Service
```

Requires:

* VPC Endpoint only

Traffic remains entirely on the AWS network.

---

## Troubleshooting

If a VPC Endpoint is not working correctly, common areas to check include:

* VPC DNS Resolution
* Route Tables
* Security Groups (where applicable)
* Endpoint Policies
* Service Availability

Misconfigured Route Tables or disabled DNS resolution are common causes of connectivity issues.

---

## Key Takeaways

* VPC Endpoints are powered by AWS PrivateLink
* VPC Endpoints provide private connectivity to AWS services
* Traffic remains on the AWS network
* Internet Gateways are not required
* NAT Gateways are not required
* Interface Endpoints create an Elastic Network Interface (ENI)
* Interface Endpoints support most AWS services and require Security Groups
* Gateway Endpoints support only Amazon S3 and Amazon DynamoDB
* Gateway Endpoints are configured through Route Tables and are free to use
* VPC Endpoints improve security by avoiding the public internet
* VPC Endpoints are highly available and horizontally scalable
* Route Tables and DNS configuration are important for proper operation
* VPC Endpoints simplify access from private subnets to AWS services

---

## Reflection

Learning about VPC Endpoints helped me understand how AWS services can be accessed securely without exposing traffic to the public internet.

I also learned how AWS PrivateLink, Route Tables, and VPC Endpoints work together to provide secure, highly available, and private connectivity between VPC resources and AWS managed services.
