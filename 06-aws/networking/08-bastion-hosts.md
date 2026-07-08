# Bastion Hosts

## Overview

This section introduces **Bastion Hosts**, secure EC2 instances deployed in public subnets that provide controlled administrative access to resources located in private subnets.

Rather than exposing private instances directly to the internet, Bastion Hosts act as a secure entry point, allowing administrators to manage private resources while reducing the overall attack surface.

## Contents

* [What is a Bastion Host?](#what-is-a-bastion-host)
* [How Bastion Hosts Work](#how-bastion-hosts-work)
* [Security Groups](#security-groups)
* [Benefits of Bastion Hosts](#benefits-of-bastion-hosts)

---

## What is a Bastion Host?

A **Bastion Host** is an EC2 instance deployed in a **public subnet** that provides secure administrative access to EC2 instances located in **private subnets**.

Instead of allowing direct SSH access to private instances from the internet, administrators first connect to the Bastion Host and then securely connect to private resources.

This approach helps keep sensitive systems isolated from public internet access.

---

## How Bastion Hosts Work

A typical Bastion Host architecture looks like:

```text
Administrator
       │
       ▼
Internet
       │
       ▼
Bastion Host
(Public Subnet)
       │
   SSH Connection
       │
       ▼
Private EC2 Instance
(Private Subnet)
```

The connection process is:

1. Connect to the Bastion Host using SSH.
2. Authenticate successfully.
3. SSH from the Bastion Host to the private EC2 instance.
4. Perform administration or maintenance tasks securely.

Private instances remain inaccessible directly from the internet.

---

## Security Groups

Security Groups play an important role in securing Bastion Hosts.

The Bastion Host Security Group should:

* Allow inbound SSH (Port 22)
* Restrict access to trusted public IP addresses (such as an office or administrator IP)

The Private EC2 Security Group should:

* Allow inbound SSH only from the Bastion Host
* Reference either the Bastion Host's private IP address or its Security Group

This ensures private instances cannot be accessed directly from external networks.

---

## Benefits of Bastion Hosts

Using a Bastion Host provides several advantages:

* Secure administrative access
* Reduced attack surface
* Private instances remain isolated
* Centralised SSH access
* Better security for production environments
* Supports private subnet architectures

Bastion Hosts are commonly used when managing backend services, databases, and other sensitive infrastructure that should not be exposed to the public internet.

---

## Key Takeaways

* Bastion Hosts provide secure access to private EC2 instances
* Bastion Hosts are deployed in public subnets
* Private EC2 instances remain isolated from the internet
* Administrators connect through the Bastion Host before accessing private resources
* Bastion Host Security Groups should restrict SSH access to trusted IP addresses
* Private instance Security Groups should only allow SSH from the Bastion Host
* Bastion Hosts reduce the attack surface of AWS environments
* Bastion Hosts are commonly used in secure production architectures

---

## Reflection

Learning about Bastion Hosts helped me understand how administrators can securely manage EC2 instances located in private subnets without exposing them directly to the internet.

I also learned how Bastion Hosts, together with Security Groups and private subnets, provide a secure access pattern that is widely used in production AWS environments.
