# DNS Terminology

## Overview

This section introduces the fundamental **DNS terminology** used throughout Amazon Route 53 and networking. Understanding these terms makes it easier to follow how domain names are translated into IP addresses and how DNS queries are resolved across the internet.

Learning the core DNS concepts provides a strong foundation for configuring Route 53, troubleshooting DNS issues, and understanding how internet traffic reaches applications hosted in AWS.

## Contents

* [Domain Name](#domain-name)
* [DNS Resolver](#dns-resolver)
* [Name Server](#name-server)
* [Top-Level Domain (TLD)](#top-level-domain-tld)
* [Fully Qualified Domain Name (FQDN)](#fully-qualified-domain-name-fqdn)
* [How DNS Works](#how-dns-works)

---

## Domain Name

A **domain name** is the human-readable address used to access websites, such as `example.com`. Instead of remembering IP addresses, users simply enter a domain name, and DNS translates it into the correct IP address.

---

## DNS Resolver

A **DNS Resolver** receives a user's DNS request and searches for the corresponding IP address. If the answer is not already cached, it queries other DNS servers until it finds the correct record.

---

## Name Server

A **Name Server** stores DNS records for a domain and responds to DNS queries. In Route 53, AWS provides authoritative name servers that answer requests using the records configured in your hosted zone.

---

## Top-Level Domain (TLD)

A **Top-Level Domain (TLD)** is the final part of a domain name, such as `.com`, `.org`, or `.net`. TLDs help organize domains and are managed by different domain registries.

---

## Fully Qualified Domain Name (FQDN)

A **Fully Qualified Domain Name (FQDN)** specifies the complete location of a resource within the DNS hierarchy, such as `www.example.com`. It uniquely identifies a host on the internet.

---

## How DNS Works

When a user enters a domain name, a DNS resolver searches for the corresponding IP address by querying multiple DNS servers. Once the correct record is found, the resolver returns the IP address, allowing the browser to connect to the requested server.

This process typically takes only milliseconds and happens automatically whenever users access websites or cloud applications.

---

## Key Takeaways

- DNS translates domain names into IP addresses
- Domain names are easier for people to remember than IP addresses
- DNS resolvers locate the correct DNS records
- Name servers store and return DNS information
- TLDs identify the domain extension
- FQDNs uniquely identify hosts
- DNS resolution allows users to access applications using domain names

---

## Reflection

Learning DNS terminology helped me understand the components involved in resolving domain names and how they work together to direct users to the correct resources. I also learned the role of DNS resolvers, name servers, and domain names in the overall DNS process.

Having a solid understanding of these terms provides a strong foundation for working with Amazon Route 53 and makes it easier to design, configure, and troubleshoot DNS solutions in AWS.
