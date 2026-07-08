# NACLs

## Overview

This section introduces **Network Access Control Lists (NACLs)**, a subnet-level firewall that controls inbound and outbound traffic within an Amazon VPC.

It also compares NACLs with **Security Groups**, explaining how they work together to provide layered network security and how understanding their differences is essential when troubleshooting connectivity issues.

## Contents

* [What is a Network ACL?](#what-is-a-network-acl)
* [NACLs vs Security Groups](#nacls-vs-security-groups)
* [Traffic Flow](#traffic-flow)
* [Stateful vs Stateless](#stateful-vs-stateless)
* [When to Use NACLs](#when-to-use-nacls)

---

## What is a Network ACL?

A **Network Access Control List (NACL)** is a subnet-level firewall that controls network traffic entering and leaving a subnet.

Unlike Security Groups, which protect individual EC2 instances, NACLs apply to **every resource** within the subnet.

NACLs allow administrators to create rules that either allow or deny traffic based on:

* Protocol
* Port Number
* Source IP Address
* Destination IP Address

Because they operate at the subnet boundary, NACLs provide an additional layer of network security.

---

## NACLs vs Security Groups

Although both provide network security, they operate at different layers.

| Feature | Network ACL | Security Group |
|---------|-------------|----------------|
| Scope | Subnet Level | Instance Level |
| Stateful | ❌ No (Stateless) | ✅ Yes (Stateful) |
| Allow Rules | ✅ Yes | ✅ Yes |
| Deny Rules | ✅ Yes | ❌ No |
| Applies To | Entire Subnet | Individual EC2 Instance |

Both are commonly used together to implement layered security.

---

## Traffic Flow

Incoming traffic follows this sequence:

```text
Internet
    │
    ▼
NACL (Inbound Rules)
    │
    ▼
Security Group (Inbound Rules)
    │
    ▼
EC2 Instance
```

Outgoing traffic follows this sequence:

```text
EC2 Instance
    │
    ▼
Security Group (Outbound Rules)
    │
    ▼
NACL (Outbound Rules)
    │
    ▼
Internet
```

Both components must allow traffic before communication succeeds.

---

## Stateful vs Stateless

One of the biggest differences between Security Groups and NACLs is how they track network connections.

### Security Groups (Stateful)

Security Groups automatically allow return traffic.

For example:

* Allow inbound SSH
* Return SSH traffic is automatically permitted

No additional outbound rule is required for the response.

---

### Network ACLs (Stateless)

NACLs do **not** remember previous connections.

If inbound traffic is allowed:

* The corresponding outbound traffic must also be explicitly allowed.

Likewise:

* Outbound requests require inbound rules to allow the returning response.

This makes NACL configuration more restrictive but also more granular.

---

## When to Use NACLs

NACLs are commonly used when additional subnet-level protection is required.

Typical use cases include:

* Blocking specific IP addresses
* Allowing or denying traffic for entire subnets
* Providing an additional security layer alongside Security Groups
* Protecting public-facing workloads
* Implementing network segmentation

In most AWS architectures, Security Groups provide primary instance-level protection, while NACLs provide broader subnet-level filtering.

---

## Key Takeaways

* Network ACLs operate at the subnet level
* Security Groups operate at the instance level
* NACLs are stateless
* Security Groups are stateful
* NACLs support both allow and deny rules
* Security Groups support allow rules only
* Both inbound and outbound rules must be configured for NACLs
* Security Groups automatically allow return traffic
* NACLs and Security Groups are commonly used together for layered security
* Understanding both is essential for troubleshooting AWS networking issues

---

## Reflection

Learning about Network ACLs helped me understand how AWS provides security at the subnet level in addition to the instance-level protection offered by Security Groups.

I also learned how the differences between stateful Security Groups and stateless Network ACLs affect traffic flow, making them essential concepts when designing secure VPC architectures and troubleshooting network connectivity.
