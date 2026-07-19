# Hosted Zones

## Overview

This section introduces **Hosted Zones** in Amazon Route 53, which are containers that store DNS records for a domain. Hosted Zones allow Route 53 to answer DNS queries and determine where internet traffic should be directed.

Amazon Route 53 supports both **Public Hosted Zones** and **Private Hosted Zones**, allowing organizations to manage DNS for publicly accessible websites as well as internal resources within Amazon VPCs.

## Contents

* [What are Hosted Zones?](#what-are-hosted-zones)
* [Public Hosted Zones](#public-hosted-zones)
* [Private Hosted Zones](#private-hosted-zones)
* [Public vs Private Hosted Zones](#public-vs-private-hosted-zones)

---

## What are Hosted Zones?

A **Hosted Zone** is a container for DNS records associated with a specific domain. It stores records such as A, AAAA, CNAME, MX, and TXT records that determine how traffic is routed to your resources.

Each hosted zone is authoritative for its domain, meaning Route 53 responds to DNS queries using the records stored within the zone.

---

## Public Hosted Zones

A **Public Hosted Zone** is used for domains that are accessible from anywhere on the internet.

When users enter your domain name into a browser, public DNS resolvers query Route 53, which returns the appropriate DNS records to direct users to your public resources such as EC2 instances, load balancers, or CloudFront distributions.

---

## Private Hosted Zones

A **Private Hosted Zone** is used for internal DNS within one or more Amazon VPCs.

Only resources inside the associated VPCs can resolve the domain names stored in the hosted zone, making it ideal for private applications, internal services, and backend infrastructure that should not be publicly accessible.

---

## Public vs Private Hosted Zones

Although both hosted zone types manage DNS records, they serve different purposes.

| Public Hosted Zone | Private Hosted Zone |
|--------------------|---------------------|
| Accessible from the internet | Accessible only within associated VPCs |
| Used for public websites and applications | Used for internal AWS resources |
| Public DNS resolution | Private DNS resolution |
| Internet-facing services | Internal infrastructure and applications |

---

## Key Takeaways

- Hosted Zones store DNS records for a domain
- Route 53 uses Hosted Zones to answer DNS queries
- Public Hosted Zones are accessible from the internet
- Private Hosted Zones are only accessible within associated VPCs
- Private Hosted Zones improve security for internal applications
- Both hosted zone types support standard DNS records

---

## Reflection

Learning about Hosted Zones helped me understand how Route 53 organizes DNS records and controls how domains are resolved. I also learned the difference between public and private DNS management and when each type of hosted zone should be used.

Understanding Hosted Zones has given me a better appreciation of how AWS separates internet-facing applications from internal infrastructure while providing secure, reliable, and scalable DNS services.
