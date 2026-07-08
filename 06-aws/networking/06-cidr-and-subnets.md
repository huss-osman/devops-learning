# CIDR And Subnets

## Overview

This section introduces **CIDR (Classless Inter-Domain Routing)** and **subnetting**, two fundamental networking concepts used throughout AWS for defining IP address ranges.

Understanding CIDR notation is essential when designing **VPCs**, **subnets**, **security groups**, and other network resources, as it determines how IP addresses are allocated and managed.

## Contents

* [What is CIDR?](#what-is-cidr)
* [CIDR Notation](#cidr-notation)
* [Subnet Masks](#subnet-masks)
* [Common CIDR Ranges](#common-cidr-ranges)
* [CIDR Examples](#cidr-examples)
* [CIDR Planning in AWS](#cidr-planning-in-aws)

---

## What is CIDR?

**CIDR (Classless Inter-Domain Routing)** is a method of defining IP address ranges.

A CIDR block consists of two parts:

* A base IP address
* A subnet mask (prefix length)

Example:

```text
192.168.0.0/24
```

The number after the slash determines how many IP addresses are available within the range.

CIDR notation is widely used throughout AWS when configuring:

* VPCs
* Subnets
* Security Groups
* Route Tables

---

## CIDR Notation

The subnet mask controls the size of the IP address range.

In general:

* Smaller prefix numbers create larger networks.
* Larger prefix numbers create smaller networks.

Examples:

| CIDR | Number of IP Addresses |
|------|-----------------------:|
| /32 | 1 |
| /31 | 2 |
| /30 | 4 |
| /29 | 8 |
| /28 | 16 |
| /27 | 32 |
| /26 | 64 |
| /24 | 256 |
| /16 | 65,536 |
| /8 | 16,777,216 |
| /0 | All IPv4 addresses |

---

## Subnet Masks

The subnet mask determines which parts of the IP address remain fixed and which parts can vary.

As the prefix becomes smaller, more bits become available for host addresses.

Examples:

| CIDR | Variable Octets |
|------|-----------------|
| /32 | None |
| /24 | Last octet |
| /16 | Last two octets |
| /8 | Last three octets |
| /0 | All octets |

This concept is important when planning VPCs and subnet layouts within AWS.

---

## Common CIDR Ranges

Some CIDR blocks are used frequently within AWS.

| CIDR | Usage |
|------|-------|
| /32 | Single IP address |
| /24 | Small subnet (256 IPs) |
| /16 | Large VPC (65,536 IPs) |
| /0 | All IPv4 addresses |

A CIDR block such as:

```text
0.0.0.0/0
```

represents every IPv4 address and is commonly seen in routing tables and security groups when allowing traffic from anywhere.

---

## CIDR Examples

Example 1:

```text
192.168.0.0/24
```

Range:

```text
192.168.0.0
→
192.168.0.255
```

Total addresses:

```text
256
```

---

Example 2:

```text
192.168.0.0/16
```

Range:

```text
192.168.0.0
→
192.168.255.255
```

Total addresses:

```text
65,536
```

---

Example 3:

```text
134.56.78.123/32
```

Represents one specific IP address only.

---

Example 4:

```text
0.0.0.0/0
```

Represents every public IPv4 address.

---

## CIDR Planning in AWS

CIDR planning is an important part of designing AWS networks.

When creating a VPC, you first choose a CIDR block and then divide it into smaller subnets.

Good CIDR planning helps:

* Prevent overlapping networks
* Allocate enough IP addresses
* Separate public and private subnets
* Support future network growth

Understanding CIDR notation makes it much easier to design scalable AWS networking architectures.

> [!TIP]
> A useful CIDR calculator for practising subnet ranges is available at:
>
> https://www.ipaddressguide.com/cidr

---

## Key Takeaways

* CIDR stands for Classless Inter-Domain Routing
* CIDR defines ranges of IPv4 addresses
* A CIDR block consists of a base IP address and a subnet mask
* Smaller prefix numbers create larger IP ranges
* Larger prefix numbers create smaller IP ranges
* `/32` represents a single IP address
* `/24` provides 256 IP addresses
* `/16` provides 65,536 IP addresses
* `0.0.0.0/0` represents all IPv4 addresses
* CIDR planning is essential when designing VPCs and subnets in AWS

---

## Reflection

Learning about CIDR notation and subnet masks helped me understand how IP address ranges are allocated and managed within AWS networking.

I also learned how CIDR blocks are used to design VPCs, create subnets, and configure security groups, making them a fundamental concept for building scalable and well-structured cloud networks.
