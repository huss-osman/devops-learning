# IPv6 In AWS

## Overview

This section introduces **IPv6**, the next generation of the Internet Protocol, and its implementation within AWS cloud environments.

It explains why IPv6 was introduced, how it differs from IPv4, its addressing format, and the unique networking considerations when using IPv6 in AWS.

## Contents

* [What is IPv6?](#what-is-ipv6)
* [IPv6 Address Format](#ipv6-address-format)
* [IPv6 in AWS](#ipv6-in-aws)
* [Why IPv6?](#why-ipv6)

---

## What is IPv6?

IPv6 (Internet Protocol Version 6) is the successor to IPv4 and was introduced to overcome IPv4 address exhaustion.

While IPv4 supports approximately **4.3 billion** addresses, IPv6 provides approximately:

```text
340 Undecillion Addresses
(3.4 × 10³⁸)
```

This enormous address space allows the internet to continue supporting billions of additional devices for decades to come.

---

## IPv6 Address Format

Unlike IPv4, IPv6 uses **128-bit addresses** represented in hexadecimal notation.

Example:

```text
2001:0db8:85a3:0000:0000:8a2e:0370:7334
```

Characteristics include:

* 128-bit addressing
* Eight hexadecimal groups
* Uses digits 0-9 and letters A-F
* Groups separated by colons (:)

IPv6 also supports address shortening by compressing consecutive groups of zeros.

Examples:

```text
::                → All groups are zero
2001:db8::1       → Middle groups compressed
::1               → Loopback address
2001:db8::abcd    → Multiple zero groups omitted
```

---

## IPv6 in AWS

AWS fully supports IPv6 for modern cloud networking.

Some important characteristics include:

* IPv6 addresses are globally unique
* IPv6 addresses are publicly routable
* No private IPv6 address ranges exist in AWS
* Security Groups and Network ACLs should be used to restrict access
* IPv6 can be assigned alongside IPv4 in dual-stack environments

Because IPv6 addresses are internet routable by default, properly configuring security controls is essential when exposing AWS resources.

---

## Why IPv6?

IPv6 was designed to support the continued growth of the internet.

Benefits include:

* Vast address space
* Future-proof networking
* Improved scalability
* Simplified address allocation
* Better support for modern cloud architectures
* Designed for billions of connected devices

As cloud adoption and connected devices continue to increase, IPv6 is becoming an increasingly important part of modern network design.

---

## Key Takeaways

* IPv6 is the successor to IPv4
* IPv6 uses 128-bit hexadecimal addresses
* IPv6 provides approximately 340 undecillion addresses
* IPv6 addresses use colons instead of periods
* AWS supports IPv6 for cloud networking
* IPv6 addresses in AWS are publicly routable
* AWS does not provide private IPv6 address ranges
* Security Groups and Network ACLs are essential when using IPv6
* IPv6 enables future growth of internet-connected devices

---

## Reflection

Learning about IPv6 helped me understand how modern networks overcome the address limitations of IPv4 while supporting the continued growth of internet-connected devices.

I also learned how IPv6 is implemented in AWS, its hexadecimal addressing format, and why properly securing publicly routable IPv6 resources is essential when designing cloud infrastructure.
