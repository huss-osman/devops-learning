# NAT Gateway

## Overview

This section introduces the **AWS NAT Gateway**, a fully managed networking service that enables resources in private subnets to access the internet while preventing unsolicited inbound connections.

NAT Gateways are commonly used to allow private EC2 instances to download software updates, access external APIs, and communicate with AWS services without exposing them directly to the public internet.

## Contents

* [What is a NAT Gateway?](#what-is-a-nat-gateway)
* [How a NAT Gateway Works](#how-a-nat-gateway-works)
* [Key Features](#key-features)
* [Design Considerations](#design-considerations)

---

## What is a NAT Gateway?

A **NAT Gateway** is a fully managed AWS service that performs **Network Address Translation (NAT)** for resources located in private subnets.

It allows outbound internet connectivity while blocking unsolicited inbound traffic from the internet.

This enables private resources to:

* Download operating system updates
* Access external APIs
* Install software packages
* Communicate with AWS public services

without requiring a public IP address.

---

## How a NAT Gateway Works

A typical NAT Gateway architecture looks like:

```text
Private EC2 Instance
        │
        ▼
Private Subnet
        │
        ▼
NAT Gateway
(Public Subnet)
        │
        ▼
Internet Gateway
        │
        ▼
Internet
```

Traffic flows from the private subnet to the NAT Gateway, which translates the private IP address into its Elastic IP before forwarding traffic to the internet.

Responses are returned to the originating instance, while unsolicited inbound connections from the internet are blocked.

---

## Key Features

AWS NAT Gateways provide several important features:

* Fully managed by AWS
* Automatic scaling up to 100 Gbps
* High availability within an Availability Zone
* Uses an Elastic IP Address
* No Security Groups to manage
* Supports outbound internet access only
* Requires minimal operational maintenance

Unlike NAT Instances, NAT Gateways do not require patching, software updates, or manual scaling.

---

## Design Considerations

When designing AWS architectures using NAT Gateways:

* NAT Gateways must be deployed in a **public subnet**
* An **Internet Gateway** must be attached to the VPC
* Private subnet Route Tables must send internet traffic (`0.0.0.0/0`) to the NAT Gateway
* NAT Gateways are **Availability Zone specific**
* High availability across multiple AZs requires one NAT Gateway per Availability Zone
* Resources located in the same subnet as the NAT Gateway cannot use it
* Charges apply for both hourly usage and data processed

These considerations are important when designing secure, scalable, and cost-effective AWS networks.

---

## Key Takeaways

* NAT stands for Network Address Translation
* NAT Gateways provide outbound internet access for private subnets
* Inbound internet connections are not permitted
* NAT Gateways are fully managed AWS services
* NAT Gateways require an Internet Gateway
* NAT Gateways use an Elastic IP Address
* NAT Gateways automatically scale with demand
* NAT Gateways are deployed in public subnets
* One NAT Gateway is recommended per Availability Zone for high availability
* Billing is based on hourly usage and data processed

---

## Reflection

Learning about NAT Gateways helped me understand how private resources can securely access the internet without being directly exposed to inbound traffic.

I also learned how NAT Gateways, Internet Gateways, route tables, and private subnets work together to build secure, highly available, and production-ready AWS network architectures.
