# IPv6 In AWS

## Overview

This section introduces **IPv6**, the next generation of the Internet Protocol, and its implementation within AWS cloud environments.

It explains why IPv6 was introduced, how it differs from IPv4, its addressing format, and the unique networking considerations when using IPv6 in AWS.

## Contents

* [What is IPv6?](#what-is-ipv6)
* [IPv6 Address Format](#ipv6-address-format)
* [IPv6 in AWS](#ipv6-in-aws)
* [Egress-only Internet Gateway](#egress-only-internet-gateway)
* [IPv6 Routing](#ipv6-Routing)
* [Why IPv6?](#why-ipv6)

---

## What is IPv6?

IPv6 (Internet Protocol Version 6) is the successor to IPv4 and was introduced to overcome IPv4 address exhaustion.

While IPv4 supports approximately **4.3 billion** addresses, IPv6 provides approximately:

```text
340 Undecillion Addresses
(3.4 × 10³⁸)
```

This enormous address space allows the internet to continue supporting billions of additional devices for decades to come.

---

## IPv6 Address Format

Unlike IPv4, IPv6 uses **128-bit addresses** represented in hexadecimal notation.

Example:

```text
2001:0db8:85a3:0000:0000:8a2e:0370:7334
```

Characteristics include:

* 128-bit addressing
* Eight hexadecimal groups
* Uses digits 0-9 and letters A-F
* Groups separated by colons (:)

IPv6 also supports address shortening by compressing consecutive groups of zeros.

Examples:

```text
::                → All groups are zero
2001:db8::1       → Middle groups compressed
::1               → Loopback address
2001:db8::abcd    → Multiple zero groups omitted
```

---

## IPv6 in AWS

AWS fully supports IPv6 for modern cloud networking.

Some important characteristics include:

* IPv6 addresses are globally unique
* IPv6 addresses are publicly routable
* No private IPv6 address ranges exist in AWS
* Security Groups and Network ACLs should be used to restrict access
* IPv6 can be assigned alongside IPv4 in dual-stack environments

Because IPv6 addresses are internet routable by default, properly configuring security controls is essential when exposing AWS resources.

---

## Egress-only Internet Gateway

An **Egress-only Internet Gateway (EIGW)** provides outbound internet access for IPv6 resources while preventing inbound connections initiated from the internet.

It performs a similar role to a NAT Gateway for IPv4, but is designed specifically for IPv6 traffic.

<p align="center">
  <img width="600" alt="Egress-only Internet Gateway" src="https://github.com/user-attachments/assets/7feb766e-98fa-4ca7-9c91-c45451d7a489" /> 

</p>

Key characteristics include:

* Supports IPv6 traffic only
* Allows outbound internet connections
* Blocks unsolicited inbound internet connections
* Designed for private IPv6 workloads
* Requires Route Table configuration

Unlike a standard Internet Gateway, which allows communication to be initiated from both directions, an Egress-only Internet Gateway only permits connections that originate from resources inside the VPC.

This makes it ideal for private subnets that require outbound internet access while preventing direct inbound IPv6 traffic.

---

## IPv6 Routing 

AWS VPCs commonly operate in **dual-stack mode**, where both IPv4 and IPv6 are enabled simultaneously.

Each VPC and subnet receives both an IPv4 CIDR block and an IPv6 CIDR block, allowing resources to communicate using either protocol.

<p align="center">
  <img width="900" alt="IPv6 Routing" src="https://github.com/user-attachments/assets/cc4b0736-97d0-446f-b7ea-2224899f93a1" /> 

</p>

### Public Subnet

Resources inside a public subnet can communicate with the internet using both IPv4 and IPv6.

A typical route table looks like:

| Destination | Target |
|-------------|--------|
| VPC IPv4 CIDR | Local |
| VPC IPv6 CIDR | Local |
| `0.0.0.0/0` | Internet Gateway |
| `::/0` | Internet Gateway |

Public EC2 instances typically have:

* Private IPv4 address
* Public Elastic IP (IPv4)
* Public IPv6 address

This allows direct internet connectivity using both protocols.

---

### Private Subnet

Private subnets route IPv4 and IPv6 traffic differently.

| Destination | Target |
|-------------|--------|
| VPC IPv4 CIDR | Local |
| VPC IPv6 CIDR | Local |
| `0.0.0.0/0` | NAT Gateway |
| `::/0` | Egress-only Internet Gateway |

For outbound traffic:

* IPv4 traffic leaves through a **NAT Gateway**
* IPv6 traffic leaves through an **Egress-only Internet Gateway**

Unlike IPv4, IPv6 does **not** require Network Address Translation (NAT).

---

### Dual-Stack Routing

In a dual-stack VPC:

* Every subnet can contain both IPv4 and IPv6 CIDR blocks.
* EC2 instances can communicate using either protocol.
* IPv4 private instances require a NAT Gateway for outbound internet access.
* IPv6 traffic is routed directly through an Internet Gateway (public subnets) or an Egress-only Internet Gateway (private subnets).
* Route Tables determine how both IPv4 and IPv6 traffic is forwarded.

This allows AWS environments to support both legacy IPv4 applications and modern IPv6 networking simultaneously.

---

## Why IPv6?

IPv6 was designed to support the continued growth of the internet.

Benefits include:

* Vast address space
* Future-proof networking
* Improved scalability
* Simplified address allocation
* Better support for modern cloud architectures
* Designed for billions of connected devices

As cloud adoption and connected devices continue to increase, IPv6 is becoming an increasingly important part of modern network design.

---

## Key Takeaways

* IPv6 is the successor to IPv4
* IPv6 uses 128-bit hexadecimal addresses
* IPv6 provides approximately 340 undecillion addresses
* IPv6 addresses use colons instead of periods
* AWS supports IPv6 for cloud networking
* IPv6 addresses in AWS are publicly routable
* AWS does not provide private IPv6 address ranges
* Security Groups and Network ACLs are essential when using IPv6
* IPv6 enables future growth of internet-connected devices
* Egress-only Internet Gateways provide outbound-only IPv6 internet access
* Route Tables must be configured to use an Egress-only Internet Gateway

---

## Reflection

Learning about IPv6 helped me understand how modern networks overcome the address limitations of IPv4 while supporting the continued growth of internet-connected devices.

I also learned how IPv6 is implemented in AWS, its hexadecimal addressing format, and why properly securing publicly routable IPv6 resources is essential when designing cloud infrastructure.
