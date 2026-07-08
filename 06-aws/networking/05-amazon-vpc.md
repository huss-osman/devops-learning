# Amazon VPC

## Overview

This section introduces **Amazon Virtual Private Cloud (VPC)**, AWS's logically isolated virtual network that allows you to securely deploy and manage cloud resources.

It covers the purpose of default and custom VPCs, CIDR blocks, subnets, internet connectivity, and how VPC networking provides the foundation for highly available and secure AWS architectures.

## Contents

* [What is a VPC?](#what-is-a-vpc)
* [Default VPC](#default-vpc)
* [CIDR Blocks](#cidr-blocks)
* [Subnets](#subnets)
* [Public and Private Subnets](#public-and-private-subnets)
* [Internet Gateway](#internet-gateway)
* [AWS Reserved IP Addresses](#aws-reserved-ip-addresses)

---

## What is a VPC?

An **Amazon Virtual Private Cloud (VPC)** is a logically isolated virtual network within AWS.

A VPC allows you to launch AWS resources into your own private networking environment while controlling:

* IP address ranges
* Subnets
* Route tables
* Internet connectivity
* Network security

Every AWS resource, such as EC2 instances, is launched inside a VPC.

---

## Default VPC

Every new AWS account includes a **Default VPC**.

The Default VPC is designed to let users quickly launch resources without manually configuring networking.

By default:

* Internet connectivity is already configured
* EC2 instances automatically receive a public IPv4 address
* EC2 instances receive both public and private DNS names
* Public subnets already exist across multiple Availability Zones
* An Internet Gateway is attached automatically

While useful for learning and testing, production workloads typically use **custom VPCs** to provide greater control and security.

### Default VPC Walkthrough

This walkthrough demonstrates the AWS Default VPC inside the AWS Management Console and explores the networking components that are automatically created for every new AWS account.

https://github.com/user-attachments/assets/cb343a44-df99-4c20-8fdf-58283264cee8

The walkthrough covers:

* The Default VPC
* IPv4 CIDR Block configuration
* Default Subnets across multiple Availability Zones
* Route Tables
* Network ACLs
* Internet Gateway
* Public IPv4 Address assignment
* Public and Private DNS Names
* Auto-assign Public IPv4 settings
* Available IPv4 addresses within subnets
* AWS reserved IP addresses
* High Availability across multiple Availability Zones

---

## CIDR Blocks

Every VPC is assigned one or more **CIDR blocks** that define its available IPv4 address range.

For example:

```text
172.31.0.0/16
```

A `/16` CIDR block provides:

```text
65,536 IP Addresses
```

CIDR blocks determine the total address space available for creating subnets and deploying AWS resources.

Useful for calculating IP ranges:

https://www.ipaddressguide.com/cidr

---

## Subnets

A subnet is a smaller network created within a VPC.

Subnets allow resources to be organised and distributed across multiple Availability Zones for improved scalability and high availability.

Each subnet is assigned its own CIDR range.

For example:

```text
172.31.32.0/20
```

A `/20` subnet provides:

```text
4,096 IP Addresses
```

Subnets are commonly created as either:

* Public Subnets
* Private Subnets

---

## Public and Private Subnets

A subnet becomes **public** when its route table contains a route to an **Internet Gateway**.

Resources inside public subnets can communicate with the internet if they have a public IP address.

Private subnets do not have direct internet access and are typically used for:

* Databases
* Internal applications
* Backend services
* ECS or EKS workloads

Using both public and private subnets is considered an AWS networking best practice.

---

## Internet Gateway

An **Internet Gateway (IGW)** enables communication between a VPC and the public internet.

It allows:

* Incoming internet traffic
* Outgoing internet traffic
* Public IP connectivity

Without an Internet Gateway, resources inside a VPC cannot communicate directly with the internet.

The Default VPC automatically includes an attached Internet Gateway.

---

## AWS Reserved IP Addresses

AWS reserves **five IP addresses** within every subnet.

These addresses cannot be assigned to EC2 instances.

For a subnet such as:

```text
10.0.0.0/24
```

AWS reserves:

| IP Address | Purpose |
|------------|---------|
| 10.0.0.0 | Network address |
| 10.0.0.1 | VPC router |
| 10.0.0.2 | Amazon DNS server |
| 10.0.0.3 | Reserved for future AWS use |
| 10.0.0.255 | Reserved address |

This means a `/24` subnet contains:

* 256 total IP addresses
* 251 usable IP addresses

Understanding these reserved addresses is important when planning subnet sizes.

---

## Key Takeaways

* Every AWS account includes a Default VPC
* A VPC provides a logically isolated virtual network
* VPC CIDR blocks define the available IP address space
* Subnets divide a VPC into smaller networks
* Public subnets provide internet access through an Internet Gateway
* Private subnets isolate resources from direct internet access
* Production environments typically use custom VPCs
* AWS reserves five IP addresses in every subnet
* Resources are commonly distributed across multiple Availability Zones for high availability
* Understanding VPC networking is fundamental for designing secure AWS architectures

---

## Reflection

Learning about Amazon VPCs helped me understand how AWS isolates cloud resources within virtual networks while providing control over IP addressing, internet connectivity, and network segmentation.

I also learned how VPCs, subnets, Internet Gateways, CIDR blocks, and AWS reserved IP addresses work together to build secure, highly available, and scalable cloud architectures.
