# Public Vs Private IP

## Overview

This section introduces **IPv4 and IPv6 addressing**, as well as the differences between **public** and **private IP addresses** used throughout modern networks and cloud environments.

Understanding how IP addresses are assigned and translated is fundamental when working with networking, AWS infrastructure, routing, internet connectivity, and cloud architectures.

Although IPv6 adoption continues to increase, IPv4 remains the most commonly used addressing scheme and will be the primary focus throughout this module.

## Contents

* [IPv4](#ipv4)
* [IPv6](#ipv6)
* [IPv4 vs IPv6](#ipv4-vs-ipv6)
* [Public IP Addresses](#public-ip-addresses)
* [Private IP Addresses](#private-ip-addresses)
* [Network Address Translation (NAT)](#network-address-translation-nat)
* [Public vs Private IP Comparison](#public-vs-private-ip-comparison)

---

## IPv4

IPv4 is the fourth version of the Internet Protocol and remains the most widely used addressing scheme on the internet today.

An IPv4 address consists of four decimal numbers separated by periods.

Example:

```text
10.160.10.240
```

Each section ranges from:

```text
0 - 255
```

IPv4 supports approximately:

```text
4.3 Billion Addresses
```

While this originally seemed sufficient, the rapid growth of internet-connected devices has significantly reduced the available address space.

---

## IPv6

IPv6 was introduced to solve the address exhaustion problem experienced with IPv4.

An IPv6 address consists of eight hexadecimal groups separated by colons.

Example:

```text
2001:0db8:85a3:0000:0000:8a2e:0370:7334
```

IPv6 provides an extremely large address space capable of supporting the continued growth of:

* Mobile devices
* Cloud infrastructure
* IoT devices
* Smart home technologies
* Industrial systems

---

## IPv4 vs IPv6

| Feature             | IPv4              | IPv6             |
| ------------------- | ----------------- | ---------------- |
| Address Length      | 32-bit            | 128-bit          |
| Address Format      | Decimal           | Hexadecimal      |
| Example             | 192.168.1.10      | 2001:db8::1      |
| Available Addresses | ~4.3 Billion      | ~340 Undecillion |
| Adoption            | Most Common Today | Growing Adoption |

> [!NOTE]
> Although IPv6 adoption continues to increase, IPv4 remains the dominant addressing scheme in many cloud environments and production systems.

---

## Public IP Addresses

A public IP address allows a device to be directly reachable from the internet.

Examples include:

* Web servers
* Public APIs
* Home routers
* Internet-facing applications

Characteristics of public IP addresses:

* Globally unique
* Routable across the internet
* Can often be geographically located
* Required for internet-facing services

Examples:

```text
3.10.50.100
52.56.120.20
```

---

## Private IP Addresses

Private IP addresses are used within internal networks and cannot be reached directly from the public internet.

The Internet Assigned Numbers Authority (IANA) has reserved three IPv4 address ranges specifically for private networks.

These ranges are:

```text
10.0.0.0      → 10.255.255.255
172.16.0.0    → 172.31.255.255
192.168.0.0   → 192.168.255.255
```

Any IPv4 address outside these reserved ranges is generally considered a public IP address.

Characteristics of private IP addresses:

* Only unique within a private network
* Not directly accessible from the internet
* Can be reused across different organisations and networks
* Commonly used within homes, offices, and cloud environments

For example, two separate companies can both use:

```text
192.168.1.10
```

without causing conflicts because the networks are isolated from each other.

> [!NOTE]
> The address **127.0.0.1** is a special loopback address used by a device to communicate with itself and is not considered part of the private IP ranges.

---

## Network Address Translation (NAT)

Private IP addresses cannot communicate directly with the internet.

Instead, traffic passes through a router, firewall, or internet gateway that performs **Network Address Translation (NAT)**.

NAT translates:

```text
Private IP → Public IP
```

and returns responses back to the original device.

This is exactly how home routers operate:

```text
Laptop (192.168.1.20)
        ↓
Home Router
        ↓
Public IP (81.x.x.x)
        ↓
Internet
```

AWS uses the same principle through services such as:

* Internet Gateways
* NAT Gateways

Without NAT, private networks would remain isolated and unable to access external services or websites.

---

## Public vs Private IP Comparison

| Feature              | Public IP            | Private IP       |
| -------------------- | -------------------- | ---------------- |
| Internet Accessible  | Yes                  | No               |
| Globally Unique      | Yes                  | No               |
| Routable on Internet | Yes                  | No               |
| Can Be Reused        | No                   | Yes              |
| Typical Usage        | Web Servers, Routers | Internal Devices |
| Example              | 52.95.110.1          | 192.168.1.10     |

---

## Key Takeaways

* IPv4 and IPv6 are the two major Internet Protocol versions
* IPv4 uses 32-bit addressing
* IPv6 uses 128-bit addressing
* IPv4 remains the most widely used addressing format
* IPv6 was introduced to solve IPv4 address exhaustion
* IANA reserves three IPv4 ranges for private networks
* Public IP addresses are globally unique and internet routable
* Private IP addresses are used within internal networks
* NAT allows private devices to communicate with the internet
* Internet Gateways and routers perform address translation
* Private IP ranges can be reused across multiple networks
* Understanding IP addressing is fundamental for networking and cloud engineering

---

## Reflection

Learning about IPv4, IPv6, public IPs, and private IPs helped me understand how devices communicate both within local networks and across the internet.

I also learned how routers, Internet Gateways, and Network Address Translation enable private devices to securely access external services while conserving public IP addresses. Understanding these concepts provides a strong foundation for networking, cloud infrastructure, and AWS architecture.
