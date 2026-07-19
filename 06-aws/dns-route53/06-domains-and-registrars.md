# Domains and Registrars

## Overview

This section introduces **domain registrars** and how they work with Amazon Route 53 to make domain names accessible on the internet. While Route 53 can register domains, it can also manage DNS for domains purchased from third-party registrars.

Understanding the difference between a domain registrar and a DNS service is essential for configuring domains correctly and ensuring traffic reaches the intended AWS resources.

## Contents

* [What is a Domain Registrar?](#what-is-a-domain-registrar)
* [Route 53 as a Registrar](#route-53-as-a-registrar)
* [Third-Party Registrars](#third-party-registrars)
* [Registrar vs DNS Service](#registrar-vs-dns-service)
* [Name Servers](#name-servers)

---

## What is a Domain Registrar?

A **domain registrar** is a company that allows you to purchase and manage domain names such as `example.com`. Registrars work with domain registries to reserve and maintain ownership of internet domain names.

Common registrars include Amazon Route 53, GoDaddy, Namecheap, and Google Domains.

---

## Route 53 as a Registrar

Amazon Route 53 allows you to register new domain names and manage them directly within AWS.

When a domain is registered through Route 53, AWS automatically configures the required name servers, making it easy to manage both domain registration and DNS from a single service.

---

## Third-Party Registrars

Domains purchased from third-party registrars can still use Route 53 for DNS management.

This is achieved by updating the domain's **name servers** at the registrar to the authoritative name servers provided by Route 53.

---

## Registrar vs DNS Service

Although they often work together, a **domain registrar** and a **DNS service** perform different roles.

| Domain Registrar | DNS Service |
|------------------|-------------|
| Registers domain names | Manages DNS records |
| Maintains domain ownership | Resolves domain names |
| Controls domain registration | Directs traffic to resources |
| Example: GoDaddy | Example: Route 53 |

---

## Name Servers

**Name servers** store the DNS records for a domain and answer DNS queries from users.

When Route 53 is used as the DNS provider, its authoritative name servers become responsible for directing traffic to the correct resources based on the configured DNS records.

---

## Key Takeaways

- A domain registrar registers and manages domain names
- Route 53 can act as both a registrar and DNS service
- Third-party domains can use Route 53 for DNS
- Name servers determine where DNS queries are answered
- Registrars manage ownership while DNS services manage routing

---

## Reflection

Learning about domain registrars helped me understand the difference between purchasing a domain name and managing its DNS records. I also learned how Route 53 can be used with both AWS-registered domains and domains purchased from third-party registrars.

Understanding how registrars, DNS services, and name servers work together provides a strong foundation for configuring domains and ensuring applications are accessible reliably through Amazon Route 53.
