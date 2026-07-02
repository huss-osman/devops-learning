# ECS Load Balancer Integration

## Overview

This section introduces how Amazon ECS integrates with AWS Load Balancers to distribute traffic across containers and ECS tasks running within a cluster.

Load Balancers play a critical role in container orchestration by improving scalability, high availability, fault tolerance, and traffic distribution across running services.

Choosing the correct Load Balancer type is important because different applications have different networking, performance, and routing requirements.

## Contents

* [Application Load Balancer (ALB)](#application-load-balancer-alb)
* [Network Load Balancer (NLB)](#network-load-balancer-nlb)
* [Classic Load Balancer (CLB)](#classic-load-balancer-clb)
* [Choosing the Right Load Balancer](#choosing-the-right-load-balancer)

---

## Application Load Balancer (ALB)

The **Application Load Balancer (ALB)** is the most commonly used Load Balancer for Amazon ECS deployments.

ALBs operate at **Layer 7 (Application Layer)** of the OSI model and understand HTTP and HTTPS traffic.

This allows ALBs to make intelligent routing decisions based on application-level information such as:

* URLs
* Paths
* Headers
* Host names
* Query strings

ALBs support advanced routing features including:

* Path-based routing
* Host-based routing
* Header-based routing

This makes ALBs ideal for:

* Web applications
* APIs
* Microservices
* Container platforms
* ECS services running multiple applications

Example:

```text
/api/*       → API Service
/frontend/*  → Frontend Service
/admin/*     → Admin Service
```

ALBs can route traffic directly to ECS Tasks and are generally considered the recommended option for most ECS workloads.

---

## Network Load Balancer (NLB)

The **Network Load Balancer (NLB)** operates at **Layer 4 (Transport Layer)** of the OSI model.

Unlike ALBs, NLBs operate using:

* TCP
* UDP
* TLS

NLBs are designed for:

* Extremely high throughput
* Very low latency
* Millions of requests per second

Common use cases include:

* Gaming platforms
* Real-time communication systems
* Financial applications
* Streaming services
* AWS PrivateLink integrations

Because NLBs operate at Layer 4, they do not support advanced HTTP routing features such as path-based routing or host-based routing.

---

## Classic Load Balancer (CLB)

The **Classic Load Balancer (CLB)** is the original AWS Load Balancer service.

Although still supported for existing workloads, it is largely considered a legacy service.

Limitations include:

* Limited routing capabilities
* No advanced Layer 7 functionality
* No support for modern ECS features
* No support for AWS Fargate

CLBs are generally only used for:

* Legacy applications
* Older AWS environments
* Backwards compatibility requirements

Most modern ECS deployments use either ALB or NLB instead.

---

## Choosing the Right Load Balancer

| Requirement | Recommended Load Balancer |
|------------|--------------------------|
| HTTP Applications | ALB |
| Microservices | ALB |
| APIs | ALB |
| High Performance TCP Workloads | NLB |
| Low Latency Applications | NLB |
| Legacy Applications | CLB |

For most ECS environments:

```text
ALB → Default Choice
NLB → High Performance Workloads
CLB → Legacy Systems Only
```

---

## Key Takeaways

* ECS integrates closely with AWS Load Balancers
* ALB is the recommended choice for most ECS workloads
* ALBs operate at Layer 7 and understand HTTP traffic
* ALBs support advanced routing capabilities
* NLBs operate at Layer 4 and prioritise performance
* NLBs are ideal for TCP and UDP workloads
* CLBs are considered legacy load balancers
* CLBs do not support AWS Fargate
* Load Balancers improve scalability and availability
* ECS can automatically register tasks with Load Balancers

---

## Reflection

Learning about ECS Load Balancer integrations helped me understand how traffic reaches containers running within ECS clusters and how AWS distributes requests across services.

I also learned that choosing the correct Load Balancer depends on the application's networking requirements, routing needs, and performance expectations, with ALBs being the preferred choice for most modern container workloads.
