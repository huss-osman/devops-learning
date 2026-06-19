# AWS Compute

## Overview

This section introduces **AWS Compute Services**, which provide the processing power required to run applications in the cloud. It focuses on the different compute options available in AWS and how they enable organisations to deploy, scale, and manage workloads without maintaining physical infrastructure.

It helps build an understanding of how AWS delivers compute through **virtual machines**, **containers**, and **serverless technologies**, while supporting **high availability**, **scalability**, and modern **cloud-native architectures**.

## Contents

* [What You'll Learn](#what-youll-learn)
* [The Compute Learning Path](#the-compute-learning-path)
* [Amazon EC2](#amazon-ec2)

---

## What You'll Learn

This module covers the core AWS compute services and concepts used to run applications in cloud environments. It starts with **Amazon EC2 fundamentals** and progresses through **instance sizing**, **configuration**, **instance types**, and **purchasing options**.

Throughout the module, you'll learn how compute resources are provisioned, how AWS provides flexibility through different deployment models, and how cloud infrastructure supports scalable and highly available applications.

> [!NOTE]
> Practical examples and hands-on assignments are included throughout the module to reinforce real-world cloud and infrastructure concepts.

---

## The Compute Learning Path

This module is structured to build AWS compute knowledge step by step.

### Compute Fundamentals

Topics include:

* Amazon Compute Overview
* Compute Options in AWS
* Virtual Machines
* Containers
* Serverless Computing
* High Availability & Scalability

---

### Amazon EC2

Topics include:

* Amazon EC2
* EC2 Sizing & Configuration
* EC2 User Data
* EC2 Instance Types
* EC2 Purchasing Options

➡️ [View EC2](./)

> [!IMPORTANT]
> Compute is the foundation of cloud infrastructure. Whether using **EC2**, **containers**, or **serverless services**, applications ultimately rely on compute resources to execute workloads, process requests, and deliver services to users.

---

## Amazon EC2

Amazon EC2 (**Elastic Compute Cloud**) is AWS's virtual machine service and one of the most widely used services within the AWS platform.

EC2 is part of AWS's **Infrastructure as a Service (IaaS)** offering, allowing users to rent virtual servers in the cloud instead of purchasing and maintaining physical hardware. Its flexibility and scalability make it suitable for both small applications and large production environments.

### What EC2 Provides

#### Virtual Machines

The primary purpose of EC2 is to provide virtual machines known as **instances**.

Users can launch instances, select operating systems, configure resources, install software, and manage servers based on application requirements.

#### Elastic Block Store (EBS)

EC2 instances commonly use **Elastic Block Store (EBS)** volumes for storage.

EBS acts like a virtual hard drive attached to an EC2 instance and stores operating systems, applications, and data.

#### Elastic Load Balancers (ELB)

When multiple EC2 instances are running, **Elastic Load Balancers (ELB)** distribute incoming traffic across them.

This improves availability and prevents individual instances from becoming overloaded while other instances remain underutilised.

#### Auto Scaling Groups (ASG)

**Auto Scaling Groups (ASG)** automatically adjust the number of EC2 instances based on application demand.

When traffic increases:

* Additional instances can be launched automatically

When traffic decreases:

* Unnecessary instances can be terminated automatically

This allows applications to scale efficiently while optimising costs.

> [!NOTE]
> EC2 introduces many of the core concepts used throughout cloud computing, including virtual machines, storage, load balancing, scalability, and high availability. These concepts form the foundation of many AWS architectures.

---

## Key Takeaways

* AWS provides multiple compute options for different workloads
* Amazon EC2 delivers flexible virtual machines in the cloud
* Containers provide lightweight and portable application deployment
* AWS Lambda enables serverless execution without managing servers
* Compute services can be designed for high availability and scalability
* AWS abstracts physical infrastructure while providing full control over workloads

---

## Reflection

Learning about AWS Compute helped me understand the different ways applications can run in cloud environments. Rather than relying solely on traditional virtual machines, AWS provides multiple approaches through EC2, containers, and serverless services depending on the workload requirements.

I also learned how compute services support scalability and high availability, allowing applications to grow and remain resilient without managing physical infrastructure. This highlights the importance of compute as a core building block of modern cloud and DevOps environments.
