# Elastic Load Balancing

## Overview

This section introduces **Elastic Load Balancing (ELB)**, an AWS service that automatically distributes incoming traffic across multiple targets such as EC2 instances, containers, and IP addresses.

Load balancing is a fundamental component of modern cloud architectures because it improves **scalability**, **high availability**, and **fault tolerance** by preventing individual resources from becoming overloaded.

## Contents

* [What is Elastic Load Balancing?](#what-is-elastic-load-balancing)
* [How Load Balancing Works](#how-load-balancing-works)
* [Benefits of Load Balancing](#benefits-of-load-balancing)
* [Scalability](#scalability)
* [High Availability](#high-availability)
* [Load Balancer Types](#load-balancer-types)

---

## What is Elastic Load Balancing?

Elastic Load Balancing (ELB) is an AWS service that automatically distributes incoming traffic across multiple backend resources.

Instead of users connecting directly to individual servers, traffic is sent to the Load Balancer first, which then forwards requests to healthy targets.

This helps ensure that no single server becomes overloaded while improving application availability.

---

## How Load Balancing Works

A Load Balancer sits between users and application resources.

Example:

```text
Users
   ↓
Load Balancer
 ↓     ↓     ↓
EC2   EC2   EC2
```

As requests arrive:

* Traffic is distributed across multiple instances
* Failed instances are avoided
* Healthy instances continue serving requests

This improves both reliability and performance.

---

## Benefits of Load Balancing

Elastic Load Balancing provides several benefits:

* Traffic distribution
* Improved application performance
* Fault tolerance
* Reduced downtime
* Automatic failover
* Better scalability

Because traffic is shared across multiple resources, applications can continue operating even if individual servers fail.

---

## Scalability

Load Balancers work closely with **Auto Scaling Groups (ASGs)**.

When traffic increases:

* New EC2 instances can be launched automatically
* The Load Balancer begins sending traffic to new instances

When traffic decreases:

* Instances can be terminated automatically
* Traffic is redistributed to remaining resources

This allows applications to scale dynamically based on demand.

---

## High Availability

Load Balancers are commonly deployed across multiple Availability Zones.

If an Availability Zone or EC2 instance becomes unavailable:

* Traffic is redirected automatically
* Healthy instances continue serving users
* Downtime is minimised

This is one of the key building blocks of highly available AWS architectures.

---

## Load Balancer Types

AWS provides several Load Balancer options:

### Application Load Balancer (ALB)

Designed for:

* HTTP
* HTTPS
* Web applications
* Microservices

---

### Network Load Balancer (NLB)

Designed for:

* TCP traffic
* UDP traffic
* Extremely high performance workloads
* Low latency applications

---

### Gateway Load Balancer (GWLB)

Designed for:

* Security appliances
* Firewalls
* Network inspection services

---

## Key Takeaways

* Elastic Load Balancing distributes traffic across multiple resources
* Load Balancers improve availability and fault tolerance
* ELB prevents individual servers from becoming overloaded
* Load Balancers integrate with Auto Scaling Groups
* ELB automatically redirects traffic away from failed instances
* Load Balancers support highly available architectures
* AWS provides ALB, NLB, and GWLB services
* Load balancing is a core component of modern cloud environments

---

## Reflection

Learning about Elastic Load Balancing helped me understand how modern applications distribute traffic across multiple resources rather than relying on a single server.

I also learned how Load Balancers improve scalability, fault tolerance, and high availability by automatically routing requests to healthy resources. Understanding load balancing is fundamental for designing resilient and production-ready cloud architectures.
