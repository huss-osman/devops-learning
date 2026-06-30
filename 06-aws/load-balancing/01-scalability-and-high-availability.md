# Scalability And High Availability

## Overview

This section introduces two fundamental cloud computing concepts: **Scalability** and **High Availability (HA)**. These concepts are essential for designing systems that can handle growing workloads while remaining operational during failures.

Understanding the difference between scalability and availability is important when building resilient, reliable, and production-ready cloud architectures.

## Contents

* [What is Scalability?](#what-is-scalability)
* [Vertical Scalability](#vertical-scalability)
* [Horizontal Scalability](#horizontal-scalability)
* [What is High Availability?](#what-is-high-availability)
* [Scalability vs High Availability](#scalability-vs-high-availability)

---

## What is Scalability?

Scalability refers to the ability of a system to handle increasing workloads by adapting available resources to meet demand.

As application traffic grows, infrastructure can scale to ensure performance remains stable and responsive.

AWS supports two main types of scalability:

* Vertical Scalability
* Horizontal Scalability

---

## Vertical Scalability

Vertical scaling, often referred to as **scaling up**, involves increasing the resources available to an existing server.

Examples include:

* Adding more CPU cores
* Increasing memory (RAM)
* Increasing storage capacity

The server becomes more powerful, but the number of servers remains unchanged.

Example:

```text
t2.micro → t3.large → m5.xlarge
```

---

## Horizontal Scalability

Horizontal scaling, often referred to as **scaling out**, involves adding additional servers or resources to distribute workload.

Instead of upgrading a single server, multiple servers work together to handle demand.

Examples include:

* Adding additional EC2 instances
* Increasing container replicas
* Scaling application nodes

Horizontal scaling is closely related to **elasticity**, where resources automatically increase or decrease based on demand.

Examples include:

* Auto Scaling Groups (ASG)
* ECS Service Scaling
* Kubernetes Horizontal Pod Autoscaling

---

## What is High Availability?

High Availability (HA) refers to designing systems so they continue operating even when individual components fail.

The objective is to minimise downtime and avoid single points of failure.

Common AWS High Availability techniques include:

* Deploying resources across multiple Availability Zones
* Using Load Balancers
* Using Auto Scaling Groups
* Replicating data across multiple locations

A highly available system continues serving users even if servers, networks, or Availability Zones fail.

---

## Scalability vs High Availability

Although related, scalability and high availability solve different problems.

| Concept           | Purpose                            |
| ----------------- | ---------------------------------- |
| Scalability       | Handle increasing workload         |
| High Availability | Remain operational during failures |

A system can be:

* Highly available but not scalable
* Scalable but not highly available
* Both scalable and highly available

Modern cloud architectures are typically designed to achieve both.

> [!NOTE]
> Horizontal scaling often improves both scalability and availability because workloads are distributed across multiple resources.

---

## Key Takeaways

* Scalability allows systems to handle increasing demand
* Vertical scaling increases resources on an existing server
* Horizontal scaling adds additional servers or resources
* Elasticity allows infrastructure to scale automatically
* High Availability focuses on reducing downtime
* High Availability removes single points of failure
* AWS provides services that support both scalability and availability
* Modern cloud architectures are designed for both scalability and resilience

---

## Reflection

Learning about scalability and high availability helped me understand two of the core principles behind modern cloud architecture.

I also learned that handling increased traffic and surviving infrastructure failures are separate challenges that require different design approaches. Understanding these concepts provides a strong foundation for designing resilient and production-ready systems in AWS.
