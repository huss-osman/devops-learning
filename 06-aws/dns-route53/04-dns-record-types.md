# DNS Record Types

## Overview

This section introduces the most common **DNS record types** used in Amazon Route 53. DNS records define how domain names are resolved and determine where internet traffic should be directed.

Understanding the different record types is essential for configuring websites, email services, load balancers, and other cloud resources while ensuring users can reliably access applications hosted in AWS.

## Contents

* [What are DNS Records?](#what-are-dns-records)
* [A Record](#a-record)
* [AAAA Record](#aaaa-record)
* [CNAME Record](#cname-record)
* [Alias Record](#alias-record)
* [NS Record](#ns-record)
* [TTL (Time to Live)](#ttl-time-to-live)

---

## What are DNS Records?

DNS records are entries stored inside a hosted zone that tell DNS how to respond to queries for a domain. Each record has a specific purpose, such as mapping a domain name to an IP address or directing traffic to another domain.

---

## A Record

An **A (Address) Record** maps a domain name to an **IPv4 address**.

For example, when a user visits `example.com`, the A record returns the IPv4 address of the server hosting the application.

---

## AAAA Record

An **AAAA Record** performs the same function as an A record but maps a domain name to an **IPv6 address** instead of IPv4.

As IPv6 adoption increases, AAAA records are becoming more common in modern cloud environments.

---

## CNAME Record

A **Canonical Name (CNAME) Record** points one domain or subdomain to another domain name rather than directly to an IP address.

This allows multiple domain names to reference the same destination without duplicating DNS records.

> [!NOTE]
> A CNAME record cannot be used for the root (apex) domain, such as `example.com`.

---

## Alias Record

An **Alias Record** is an AWS-specific feature that functions similarly to a CNAME but can point directly to AWS resources such as Application Load Balancers, CloudFront distributions, S3 static websites, and API Gateway.

Unlike CNAME records, Alias records can be used at the root domain and do not incur additional DNS query charges for supported AWS services.

---

## NS Record

A **Name Server (NS) Record** identifies the authoritative name servers responsible for a domain's hosted zone.

When a domain is registered, these name servers are used by DNS resolvers to locate the correct DNS records for that domain.

---

## TTL (Time to Live)

**Time to Live (TTL)** determines how long DNS resolvers cache a DNS record before requesting an updated value from the authoritative name server.

Lower TTL values allow DNS changes to propagate more quickly, while higher values reduce the number of DNS queries and can improve performance.

---

## Key Takeaways

- DNS records determine how domain names are resolved
- A records map domains to IPv4 addresses
- AAAA records map domains to IPv6 addresses
- CNAME records point one domain to another domain
- Alias records provide AWS-specific routing for supported services
- NS records identify authoritative name servers
- TTL controls how long DNS records are cached

---

## Reflection

Learning about DNS record types helped me understand how Route 53 directs traffic to different resources using various record configurations. I also learned the differences between A, AAAA, CNAME, Alias, and NS records, as well as when each should be used.

Understanding these record types provides a strong foundation for configuring DNS in AWS and ensures applications can be accessed efficiently, reliably, and with the appropriate routing behaviour.
