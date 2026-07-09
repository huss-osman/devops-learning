# VPC Peering

## Overview

This section introduces **VPC Peering**, an AWS networking feature that allows two Virtual Private Clouds (VPCs) to communicate privately over the AWS network.

VPC Peering enables secure communication between VPCs without traversing the public internet, making it ideal for connecting environments, applications, and AWS accounts while maintaining low latency and high security.

## Contents

* [What is VPC Peering?](#what-is-vpc-peering)
* [How VPC Peering Works](#how-vpc-peering-works)
* [Key Characteristics](#key-characteristics)
* [Route Tables](#route-tables)
* [Common Use Cases](#common-use-cases)

---

## What is VPC Peering?

A **VPC Peering Connection** is a networking connection between two VPCs that allows them to communicate privately using AWS's internal network.

Once a peering connection is established, resources in each VPC can communicate with one another using their private IP addresses.

Traffic never traverses the public internet, resulting in secure, low-latency communication.

---

## How VPC Peering Works

A typical VPC Peering architecture looks like:

```text
VPC A
10.0.0.0/16
      │
      │ VPC Peering Connection
      │
VPC B
172.31.0.0/16
```

Instances within both VPCs can communicate privately once:

* A VPC Peering Connection is created.
* Route Tables are updated.
* Security Groups and Network ACLs allow the required traffic.

---

## Key Characteristics

VPC Peering provides several important characteristics:

* Private communication over the AWS network
* Low latency between VPCs
* Supports communication across AWS accounts
* Supports communication across AWS Regions
* Requires non-overlapping CIDR blocks
* Uses private IP addresses for communication

### Non-Transitive Routing

VPC Peering is **non-transitive**.

For example:

```text
VPC A ←→ VPC B ←→ VPC C
```

Even though:

* VPC A is peered with VPC B
* VPC B is peered with VPC C

VPC A **cannot** communicate with VPC C unless another direct peering connection is created.

---

## Route Tables

Creating a peering connection alone does not allow communication.

Each VPC's Route Table must be updated with routes that direct traffic to the peering connection.

Example:

```text
Destination: 172.31.0.0/16
Target: pcx-xxxxxxxx
```

Without the appropriate routes, traffic between the VPCs cannot be forwarded.

Security Groups and Network ACLs must also permit the required traffic.

---

## Common Use Cases

VPC Peering is commonly used for:

* Connecting development and production environments
* Sharing services between multiple VPCs
* Communication between different business departments
* Connecting VPCs across AWS accounts
* Building secure internal application architectures

Because communication remains entirely within the AWS network, VPC Peering provides a secure and efficient way to share resources across isolated environments.

---

## Key Takeaways

* VPC Peering privately connects two VPCs
* Communication stays on the AWS internal network
* Public internet access is not required
* Peered VPCs must use non-overlapping CIDR blocks
* VPC Peering uses private IP addresses
* Route Tables must be updated after creating a peering connection
* Security Groups and Network ACLs must allow the traffic
* VPC Peering is non-transitive
* VPC Peering supports communication across AWS accounts and Regions
* VPC Peering is commonly used to connect environments and applications securely

---

## Reflection

Learning about VPC Peering helped me understand how separate VPCs can communicate securely without exposing traffic to the public internet.

I also learned the importance of non-overlapping CIDR blocks, route table configuration, and the non-transitive nature of VPC Peering when designing secure and scalable AWS network architectures.
