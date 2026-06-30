# Elastic IPs

## Overview

This section introduces **Elastic IPs (EIPs)**, which provide static public IPv4 addresses for AWS resources. Unlike automatically assigned public IP addresses, Elastic IPs remain under your control and can be reassigned between EC2 instances when required.

Understanding Elastic IPs is important for scenarios requiring fixed public addresses, failover capabilities, and stable external connectivity. It also highlights modern AWS architectural practices where DNS and Load Balancers are often preferred alternatives.

## Contents

* [Dynamic Public IP Addresses](#dynamic-public-ip-addresses)
* [What Are Elastic IPs?](#what-are-elastic-ips)
* [Elastic IP Characteristics](#elastic-ip-characteristics)
* [Elastic IP Walkthrough](#elastic-ip-walkthrough)
* [When To Use Elastic IPs](#when-to-use-elastic-ips)
* [Alternatives to Elastic IPs](#alternatives-to-elastic-ips)

---

## Dynamic Public IP Addresses

By default, EC2 instances receive dynamically allocated public IPv4 addresses.

If an instance is stopped and started again:

* The public IP address may change
* External services may no longer reach the instance
* DNS records may require updates

For many workloads this behaviour is acceptable, but some applications require a consistent public endpoint.

---

## What Are Elastic IPs?

An Elastic IP is a static public IPv4 address allocated to your AWS account.

Unlike normal public IP addresses:

* The address remains under your ownership until released
* It can be reassigned between EC2 instances
* It survives instance stop and start operations

Elastic IPs provide a consistent public endpoint for applications and services.

---

## Elastic IP Characteristics

Elastic IPs provide several benefits:

* Fixed public IPv4 addresses
* Can be remapped between EC2 instances
* Useful during failover scenarios
* Simplifies external integrations

Limitations include:

* Only one instance can use an Elastic IP at a time
* AWS limits accounts to 5 Elastic IPs by default
* Unused Elastic IPs incur charges

> [!NOTE]
> Elastic IPs are free while attached to running resources but may incur charges when allocated and left unused.

---

## Elastic IP Walkthrough

This walkthrough demonstrates how to allocate, associate, and release an Elastic IP address within AWS.

Topics covered include:

* Allocating an Elastic IP
* Launching an EC2 instance without an automatically assigned public IP
* Associating an Elastic IP with an EC2 instance
* Connecting to the instance using the Elastic IP
* Releasing the Elastic IP after use
* Cleaning up resources to avoid unnecessary charges

### Walkthrough Resource

https://github.com/user-attachments/assets/bb60c650-8f4c-4087-9350-a89e496d1f4d

---

## When To Use Elastic IPs

Elastic IPs are commonly used for:

* Static public endpoints
* Legacy applications requiring fixed IP addresses
* Failover scenarios
* DNS configurations that depend on fixed IPs

One major benefit is the ability to quickly move traffic between instances by remapping the Elastic IP during outages or maintenance windows.

---

## Alternatives to Elastic IPs

AWS generally recommends avoiding Elastic IPs unless they are genuinely required.

Modern architectures typically prefer:

### DNS

DNS records can point users to changing public IP addresses without exposing the underlying infrastructure changes.

### Load Balancers

Load Balancers provide:

* Higher availability
* Better scalability
* Traffic distribution across multiple instances
* Reduced dependency on individual servers

> [!IMPORTANT]
> Elastic IPs are often considered a temporary or transitional solution in modern cloud architectures. DNS and Load Balancers are generally preferred for production environments.

---

## Key Takeaways

* EC2 public IP addresses are dynamic by default
* Elastic IPs provide static public IPv4 addresses
* Elastic IPs remain associated with an AWS account until released
* Elastic IPs can be remapped between instances
* Elastic IPs are useful for failover scenarios
* Only one instance can use an Elastic IP at a time
* AWS provides five Elastic IPs per account by default
* Unused Elastic IPs may incur charges
* DNS and Load Balancers are often preferred alternatives
* Modern cloud architectures generally minimise Elastic IP usage

---

## Reflection

Learning about Elastic IPs helped me understand how AWS handles public addressing and why public IP addresses can change during the lifecycle of an EC2 instance.

I also learned that while Elastic IPs solve the problem of changing public addresses, modern cloud architectures often prefer DNS and Load Balancers for scalability, flexibility, and resilience. Understanding when and when not to use Elastic IPs is an important part of designing cloud infrastructure.
