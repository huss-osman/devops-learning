# Routing Policies

## Overview

This section introduces **Route 53 Routing Policies**, which determine how DNS queries are answered and how traffic is distributed. Rather than always returning the same destination, Route 53 routes users based on factors such as latency, location, health, or assigned weights.

Choosing the appropriate routing policy helps improve application availability, performance, fault tolerance, and the overall user experience by directing traffic to the most suitable resources.

## Contents

* [What are Routing Policies?](#what-are-routing-policies)
* [Simple Routing](#simple-routing)
* [Weighted Routing](#weighted-routing)
* [Latency-Based Routing](#latency-based-routing)
* [Geolocation Routing](#geolocation-routing)
* [Geoproximity Routing](#geoproximity-routing)
* [IP-Based Routing](#ip-based-routing)
* [Multi-Value Routing](#multi-value-routing)

---

## What are Routing Policies?

Routing policies determine how Route 53 responds to DNS queries when multiple resources are available. Each policy is designed for different use cases, allowing traffic to be distributed based on specific business or technical requirements.

---

## Simple Routing

**Simple Routing** directs all traffic to a single resource or randomly selects between multiple healthy resources with the same record.

It is best suited for simple applications that do not require advanced traffic management or failover.

---

## Weighted Routing

**Weighted Routing** distributes traffic between multiple resources based on assigned percentages.

This is commonly used for gradual deployments, A/B testing, or directing more traffic to higher-capacity resources.

---

## Latency-Based Routing

**Latency-Based Routing** directs users to the AWS Region that provides the lowest network latency.

This helps reduce response times and improves the experience for users accessing globally distributed applications.

---

## Geolocation Routing

**Geolocation Routing** routes users based on their geographic location, such as country or continent.

It is useful for serving region-specific content, complying with regulations, or directing users to localized applications.

---

## Geoproximity Routing

**Geoproximity Routing** routes traffic based on the physical location of AWS resources and users. It also supports traffic biasing, allowing more or less traffic to be directed toward specific Regions.

This policy requires the use of **Route 53 Traffic Flow**.

---

## IP-Based Routing

**IP-Based Routing** routes requests according to the source IP address of the client.

This allows organizations to deliver different experiences or services based on predefined IP address ranges.

---

## Multi-Value Routing

**Multi-Value Routing** returns multiple healthy resources in response to a DNS query.

If one resource becomes unhealthy, Route 53 automatically removes it from DNS responses, improving application availability without requiring a load balancer.

---

## Key Takeaways

- Routing policies determine how DNS queries are answered
- Simple Routing is best for basic applications
- Weighted Routing distributes traffic by percentage
- Latency-Based Routing improves performance by reducing latency
- Geolocation Routing directs users based on location
- Geoproximity Routing routes traffic based on geographic distance
- IP-Based Routing uses client IP addresses
- Multi-Value Routing returns multiple healthy endpoints

---

## Reflection

Learning about Route 53 Routing Policies helped me understand how DNS intelligently directs traffic instead of resolving domain names. I learned different routing policies improve performance, availability, and user experience depending on application requirements.

Understanding these routing strategies provides a strong foundation for designing scalable and resilient cloud architectures while ensuring users are directed to the most appropriate resources in different scenarios.
