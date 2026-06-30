# Public Vs Private IP

## Overview

This section introduces **IPv4 and IPv6 addressing**, the two primary Internet Protocol versions used to identify and communicate with devices across networks.

Understanding the differences between IPv4 and IPv6 is important when working with cloud environments, networking, and modern infrastructure, as both protocols are used to route traffic between systems and services.

Although IPv6 adoption continues to grow, IPv4 remains the most commonly used protocol within many environments and will be the primary focus throughout this module.

## Contents

* [IPv4](#ipv4)
* [IPv6](#ipv6)
* [IPv4 vs IPv6](#ipv4-vs-ipv6)

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

## Key Takeaways

* IPv4 and IPv6 are the two major Internet Protocol versions
* IPv4 uses 32-bit addressing
* IPv6 uses 128-bit addressing
* IPv4 remains the most widely used addressing format
* IPv6 was introduced to solve IPv4 address exhaustion
* IPv6 adoption continues to increase with cloud and IoT growth
* Understanding IP addressing is fundamental for networking and cloud engineering

---

## Reflection

Learning about IPv4 and IPv6 helped me understand how devices are uniquely identified and communicate across networks and cloud environments.

I also learned why IPv6 was introduced and how its significantly larger address space supports the continued growth of internet-connected devices, cloud platforms, and modern infrastructure.
