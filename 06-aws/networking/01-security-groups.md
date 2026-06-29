# Security Groups

## Overview

This section introduces **AWS Security Groups**, which act as virtual firewalls for EC2 instances. Security Groups control how traffic flows into and out of AWS resources by defining which connections are permitted.

Understanding Security Groups is fundamental to securing cloud infrastructure, as they provide fine-grained control over network access while supporting secure communication between applications and services.

## Contents

* [What are Security Groups?](#what-are-security-groups)
* [Allow Rules](#allow-rules)
* [Traffic Filtering](#traffic-filtering)
* [Stateful Behaviour](#stateful-behaviour)

---

## What are Security Groups?

Security Groups are virtual firewalls attached to EC2 instances and other AWS resources.

They determine which network traffic is allowed to enter and leave an instance based on rules that define ports, protocols, and source or destination addresses.

> [!NOTE]
> Every EC2 instance requires at least one Security Group.

---

## Allow Rules

Unlike traditional firewalls, Security Groups only support **allow rules**.

If traffic is not explicitly allowed by a rule, it is automatically denied by default.

This approach simplifies configuration and follows the principle of least privilege by only permitting required traffic.

---

## Traffic Filtering

Security Group rules can allow traffic based on:

* IP addresses
* CIDR ranges
* Protocols
* Port numbers
* Other Security Groups

This allows applications to communicate securely without exposing resources unnecessarily to the public internet.

Examples include:

* HTTP traffic on port **80**
* HTTPS traffic on port **443**
* SSH access on port **22**

---

## Stateful Behaviour

Security Groups are **stateful**.

If inbound traffic is allowed, the return outbound traffic is automatically permitted without requiring an additional rule.

Similarly, if outbound traffic is initiated and allowed, the response traffic is automatically accepted.

This simplifies rule management compared to stateless firewalls.

---

## Key Takeaways

* Security Groups act as virtual firewalls for AWS resources
* They control inbound and outbound traffic
* Security Groups only contain allow rules
* Traffic not explicitly allowed is blocked by default
* Rules can be based on ports, protocols, IP addresses, or Security Groups
* Security Groups are stateful
* Security Groups are fundamental to securing EC2 instances

---

## Reflection

Learning about Security Groups helped me understand how network access is controlled within AWS environments. Rather than exposing services directly to the internet, Security Groups allow precise control over which traffic is permitted.

I also learned how allow rules, ports, IP addresses, and stateful filtering work together to provide a strong foundation for securing cloud infrastructure and production workloads.
