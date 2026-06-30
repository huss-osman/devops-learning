# Network Load Balancer

## Overview

This section introduces the **Network Load Balancer (NLB)**, AWS's high-performance Layer 4 load balancer designed for applications that require extremely low latency and very high throughput.

Unlike Application Load Balancers that inspect HTTP requests, Network Load Balancers operate at the transport layer and forward TCP and UDP traffic directly to backend resources with minimal processing overhead.

This makes NLBs ideal for workloads that require millions of requests per second, predictable performance, and static IP addresses.

## Contents

* [What is a Network Load Balancer?](#what-is-a-network-load-balancer)
* [Layer 4 Load Balancing](#layer-4-load-balancing)
* [TCP and UDP Traffic](#tcp-and-udp-traffic)
* [Static IP Addresses](#static-ip-addresses)
* [Use Cases](#use-cases)
* [NLB vs ALB](#nlb-vs-alb)

---

## What is a Network Load Balancer?

A **Network Load Balancer (NLB)** is AWS's Layer 4 load balancer designed for high-performance applications.

Unlike an ALB, an NLB does not inspect application-level data such as:

* URLs
* Headers
* Cookies
* Query Strings

Instead, it forwards traffic based on:

* TCP
* UDP
* Ports
* IP Addresses

This allows traffic to pass through with extremely low latency.

---

## Layer 4 Load Balancing

NLBs operate at **Layer 4 of the OSI Model**, known as the **Transport Layer**.

This means they handle:

* TCP traffic
* UDP traffic

Because they do not inspect HTTP requests or perform application-level processing, NLBs can process traffic significantly faster than Application Load Balancers.

This makes them ideal for performance-sensitive workloads.

---

## TCP and UDP Traffic

Network Load Balancers forward traffic directly to backend resources without modifying requests.

Unlike ALBs, NLBs do not perform:

* HTTP inspection
* Path-based routing
* Host-based routing
* Header inspection
* SSL termination

Instead, traffic is forwarded directly based on ports and protocols.

This approach provides:

* Lower latency
* Higher throughput
* Faster packet forwarding

---

## Static IP Addresses

One major advantage of NLBs is support for static IP addresses.

Each Availability Zone receives its own static IP address.

NLBs also support:

* Elastic IP addresses
* Static endpoints
* Predictable networking configurations

This is useful for:

* Firewall allow lists
* Security appliances
* External integrations
* Legacy applications

---

## Use Cases

Common NLB use cases include:

* Gaming servers
* Financial trading systems
* DNS services
* VoIP applications
* Streaming services
* Real-time communication platforms

These workloads often require:

* Extremely low latency
* High throughput
* Millions of concurrent connections

---

## NLB vs ALB

| Feature | NLB | ALB |
|----------|-----|-----|
| OSI Layer | Layer 4 | Layer 7 |
| Protocols | TCP, UDP | HTTP, HTTPS |
| Static IP Support | Yes | No |
| Path Routing | No | Yes |
| Host Routing | No | Yes |
| Header Inspection | No | Yes |
| Latency | Very Low | Higher |
| Best For | Performance | Web Applications |

> [!NOTE]
> If your application requires intelligent HTTP routing, use an ALB. If your application requires raw performance and low latency TCP or UDP traffic, use an NLB.

---

## Key Takeaways

* NLBs operate at Layer 4 of the OSI model
* NLBs handle TCP and UDP traffic
* NLBs provide extremely low latency
* NLBs support millions of requests per second
* NLBs provide static IP addresses per Availability Zone
* Elastic IPs can be attached to NLBs
* NLBs do not inspect HTTP requests
* NLBs do not support path-based or host-based routing
* NLBs are ideal for performance-sensitive workloads
* NLBs are commonly used for gaming, VoIP, DNS, and financial applications

---

## Reflection

Learning about Network Load Balancers helped me understand the difference between application-level traffic management and transport-level traffic forwarding.

I also learned that while Application Load Balancers provide intelligent routing features, Network Load Balancers prioritise raw performance, low latency, and scalability. Understanding when to use each type of load balancer is an important part of designing modern cloud architectures.
