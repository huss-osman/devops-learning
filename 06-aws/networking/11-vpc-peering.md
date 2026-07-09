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
* [Advanced Features](#advanced-features)

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

## Advanced Features

VPC Peering supports several advanced capabilities that make it suitable for larger AWS environments.

### Cross-Account and Cross-Region Peering

VPC Peering is not limited to VPCs within the same AWS account or Region.

It supports:

* Cross-account VPC Peering
* Cross-region VPC Peering

This allows organisations to securely connect environments that are managed by different teams or deployed across multiple AWS Regions while keeping traffic on the AWS global network.

---

### Security Group Referencing

When VPCs are peered **within the same AWS Region**, Security Groups can reference Security Groups that belong to another AWS account.

Instead of allowing traffic from specific IP addresses, Security Groups can reference resources dynamically.

Example:

<p align="center">
  <img width="850" alt="Cross Account Security Group Reference" src="https://github.com/user-attachments/assets/f952f112-0e01-492a-b862-4afa75d5de42" />
</p>

This approach provides several benefits:

* Simplifies Security Group management
* Removes the need to hard-code IP addresses
* Improves security through Security Group references
* Makes cross-account communication easier to manage

This feature is commonly used when organisations separate environments into different AWS accounts, such as development, staging, and production, while still allowing controlled communication between specific resources.

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
* Security Groups can reference peered Security Groups across AWS accounts within the same Region
* VPC Peering is commonly used to connect environments and applications securely

---

## Reflection

Learning about VPC Peering helped me understand how separate VPCs can communicate securely without exposing traffic to the public internet.

I also learned the importance of non-overlapping CIDR blocks, route table configuration, and the non-transitive nature of VPC Peering when designing secure and scalable AWS network architectures.
