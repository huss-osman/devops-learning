# Internet Gateway

## Overview

This section introduces the **Internet Gateway (IGW)**, a highly available and horizontally scalable AWS networking component that enables communication between resources inside a VPC and the public internet.

It explains how Internet Gateways work alongside route tables to provide internet connectivity for public resources while forming a key part of AWS network architecture.

## Contents

* [What is an Internet Gateway?](#what-is-an-internet-gateway)
* [How an Internet Gateway Works](#how-an-internet-gateway-works)
* [Route Tables and Internet Access](#route-tables-and-internet-access)

---

## What is an Internet Gateway?

An **Internet Gateway (IGW)** is a VPC component that allows communication between resources inside a VPC and the public internet.

Resources such as:

* EC2 Instances
* ECS Tasks
* Elastic Load Balancers
* Other AWS services with public IP addresses

can send and receive internet traffic through an Internet Gateway.

Internet Gateways are:

* Horizontally scalable
* Highly available
* Fully managed by AWS
* Redundant across the AWS infrastructure

Only **one Internet Gateway** can be attached to a VPC at a time, and an Internet Gateway can only be attached to **one VPC**.

---

## How an Internet Gateway Works

An Internet Gateway acts as the connection between your VPC and the internet.

Example:

```text
Internet
    │
    ▼
Internet Gateway
    │
    ▼
Route Table
    │
    ▼
Public Subnet
    │
    ▼
EC2 Instance
```

Simply creating and attaching an Internet Gateway **does not** provide internet access.

Traffic must also be routed correctly through the subnet's route table.

---

## Route Tables and Internet Access

For resources inside a public subnet to access the internet:

1. Create an Internet Gateway.
2. Attach the Internet Gateway to the VPC.
3. Add a route in the subnet's Route Table that points internet traffic to the Internet Gateway.

Example route:

```text
Destination: 0.0.0.0/0
Target: Internet Gateway (igw-xxxxxxxx)
```

Without this route, resources remain isolated even if an Internet Gateway is attached.

Route Tables determine where network traffic is sent, making them essential for enabling internet connectivity.

---

## Key Takeaways

* Internet Gateways connect a VPC to the public internet
* Internet Gateways are highly available and horizontally scalable
* One Internet Gateway can be attached to one VPC
* Attaching an Internet Gateway alone does not provide internet access
* Route Tables must include a route to the Internet Gateway
* Public subnets use Internet Gateways to reach the internet
* Internet Gateways are a fundamental component of AWS networking

---

## Reflection

Learning about Internet Gateways helped me understand how AWS enables secure communication between VPC resources and the public internet.

I also learned that Internet Gateways work together with Route Tables to direct internet-bound traffic, making both components essential for designing public subnets and internet-facing AWS architectures.
