# Application Load Balancer

## Overview

This section introduces the **Application Load Balancer (ALB)**, AWS's Layer 7 load balancer designed specifically for HTTP and HTTPS traffic. Unlike traditional load balancers, ALBs understand application-level information such as URLs, paths, headers, cookies, and query strings.

This makes ALBs particularly useful for modern applications built using **microservices**, **containers**, and **serverless architectures**, where traffic often needs to be routed intelligently to different services.

## Contents

* [What is an Application Load Balancer?](#what-is-an-application-load-balancer)
* [Layer 7 Load Balancing](#layer-7-load-balancing)
* [Routing Capabilities](#routing-capabilities)
* [Target Groups](#target-groups)
* [Health Checks](#health-checks)
* [ALB Hostnames and Client IPs](#alb-hostnames-and-client-ips)

---

## What is an Application Load Balancer?

An **Application Load Balancer (ALB)** is a Layer 7 load balancer that distributes HTTP and HTTPS traffic across multiple backend resources.

Unlike lower-level load balancers that only look at IP addresses and ports, ALBs inspect the contents of requests and make routing decisions based on application data.

Examples include:

* URLs
* Headers
* Cookies
* Query Strings
* Host Names

This allows a single ALB to support multiple applications simultaneously.

---

## Layer 7 Load Balancing

ALBs operate at **Layer 7 of the OSI Model**, which is the **Application Layer**.

Because they understand HTTP traffic, ALBs support features such as:

* HTTP
* HTTPS
* HTTP/2
* WebSockets

This makes ALBs ideal for:

* Web applications
* APIs
* Microservices
* Container platforms
* Real-time applications

---

## Routing Capabilities

One of the biggest advantages of ALBs is intelligent traffic routing.

### Path-Based Routing

Traffic can be routed based on the request path.

Examples:

```text
/users     → User Service
/posts     → Post Service
/comments  → Comment Service
```

This allows multiple applications to share a single ALB.

---

### Host-Based Routing

Traffic can be routed based on host names.

Examples:

```text
blog.example.com  → Blog Service
api.example.com   → API Service
shop.example.com  → Shopping Service
```

---

### Query String Routing

Traffic can be routed based on query parameters.

Example:

```text
/products?id=100
```

---

### Header-Based Routing

Requests can also be routed using HTTP headers.

Examples include:

* Mobile devices
* Desktop devices
* API versions
* Geographic routing

---

## Target Groups

ALBs send traffic to **Target Groups**.

A Target Group is a collection of backend resources responsible for handling requests.

Supported target types include:

* EC2 Instances
* ECS Tasks
* Lambda Functions
* Private IP Addresses

Each target group is usually associated with a specific application or service.

Examples:

* User Service Target Group
* Search Service Target Group
* Authentication Service Target Group

Target Groups allow different parts of an application to scale independently while remaining behind a single load balancer.

ALBs can also route traffic to multiple applications running on the same EC2 instance or ECS host by using ports and routing rules.

---

## ALB Hostnames and Client IPs

Every ALB receives an AWS-generated DNS name:

```text
xxx.region.elb.amazonaws.com
```

This hostname can be mapped to custom domains using DNS services such as Route 53.

---

### X-Forwarded Headers

Because client connections terminate at the ALB, backend applications do not see the client's original IP address directly.

AWS forwards this information using HTTP headers:

* X-Forwarded-For
* X-Forwarded-Port
* X-Forwarded-Proto

These headers allow applications to determine the original client details even though connections terminate at the load balancer.

These headers are commonly used for:

* Logging
* Analytics
* Rate limiting
* Geolocation
* Security auditing

---

## Key Takeaways

* ALBs operate at Layer 7 (Application Layer)
* ALBs understand HTTP and HTTPS traffic
* ALBs support HTTP/2 and WebSockets
* Path-based routing enables microservice architectures
* Host-based routing allows multiple domains on one ALB
* Target Groups define where traffic is sent
* ALBs support EC2, ECS, Lambda, and private IP targets
* Health checks automatically remove unhealthy targets
* ALBs provide AWS-managed DNS hostnames
* Client IP information is forwarded using HTTP headers

---

## Reflection

Learning about Application Load Balancers helped me understand how modern applications route traffic intelligently rather than simply distributing requests evenly across servers.

I also learned how features such as path-based routing, host-based routing, target groups, and health checks make ALBs a core component of microservices, containers, and cloud-native architectures.
