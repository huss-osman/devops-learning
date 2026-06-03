<img width="1000" height="500" alt="imageedit_1_5708764918" src="https://github.com/huss-osman/devops-learning/blob/main/images/Networking%20Banner%20Main.png" />

# Networking

![Domain](https://img.shields.io/badge/Domain-Networking-blue?logo=cisco)
![Protocols](https://img.shields.io/badge/Protocols-TCP%2FIP-blue?logo=cloudflare)
![Focus](https://img.shields.io/badge/Focus-Network%20Fundamentals-purple?logo=cloudflare)
![Cloud](https://img.shields.io/badge/Cloud-AWS-orange?logo=amazonaws)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Computer Networking** through practical troubleshooting and infrastructure concepts.

Networking is the foundation of modern infrastructure. Nearly everything in DevOps including cloud platforms, containers, APIs, CI/CD pipelines, and distributed systems relies on strong networking fundamentals.

The focus throughout this work is on understanding **how networking behaves internally**, not memorising definitions.

---

## 🧠 New to Networking? Read This First

- Networking can feel abstract at first — that’s normal.
- Focus on **how data moves**, not just terminology.
- Use tools like `ping`, `traceroute`, `nslookup`, and `dig`.
- Draw diagrams to understand traffic flow.
- Revisit concepts multiple times.

> [!IMPORTANT]
> If you don’t understand networking, debugging production systems becomes guesswork.

---

## Learning Objectives

By working through this module, I aimed to:

- Understand how systems communicate across networks
- Learn the OSI and TCP/IP models
- Understand DNS, routing, and IP addressing
- Work with common protocols such as TCP, UDP, HTTP, and DNS
- Debug network issues using real tools
- Apply networking fundamentals to cloud environments such as AWS

---

## Topics Covered

### Fundamentals

- [Introduction to Networking](./fundamentals/01-introduction-to-networking.md)  
  Introduction to the networking module and why it matters.

- [Networking Fundamentals](./fundamentals/02-networking-fundamentals.md)  
  Core concepts behind communication between systems.

- [Overview of Computer Networks](./fundamentals/03-overview-of-computer-networks.md)  
  How networks are structured and how devices communicate.

- [LAN & WAN](./fundamentals/04-lan-and-wan.md)  
  Local area networks, wide area networks, and their use cases.

- [Switches, Routers and Firewalls](./fundamentals/05-switches-routers-and-firewalls.md)  
  How traffic is forwarded, routed, and filtered.

- [IP Address & MAC Address](./fundamentals/06-ip-address-and-mac-address.md)  
  Device addressing at different layers of the network.

- [Ports & Protocols: TCP, UDP](./fundamentals/07-ports-and-protocols-tcp-udp.md)  
  How services communicate over networks.

- [Introduction to the OSI Model](./fundamentals/08-introduction-to-the-osi-model.md)  
  Why the OSI model is used to understand networking.

- [The 7 Layers of the OSI Model](./fundamentals/09-the-7-layers-of-the-osi-model.md)  
  The seven networking layers and their responsibilities.

- [TCP/IP Model](./fundamentals/10-tcp-ip-model.md)  
  The practical model commonly used in real networks.

- [OSI Layers: Sender & Receiver POV](./fundamentals/11-osi-layers-sender-receiver-pov.md)  
  How data moves from sender to receiver across layers.

- [Ports & Protocols Recap](./fundamentals/12-ports-and-protocols-recap.md)  
  Reinforcing ports, protocols, and service communication.

- [Introduction to DNS](./fundamentals/13-introduction-to-dns.md)  
  Introduction to Domain Name System concepts.

- [What is DNS](./fundamentals/14-what-is-dns.md)  
  How DNS translates domain names into IP addresses.

- [DNS Components](./fundamentals/15-dns-components.md)  
  Nameservers, zones, resolvers, and DNS hierarchy.

- [DNS Records](./fundamentals/16-dns-records.md)  
  Common record types such as A, CNAME, MX, TXT, and NS.

- [How Does DNS Work?](./fundamentals/17-how-does-dns-work.md)  
  Step-by-step DNS resolution flow.

- [Network Debugging Tools](./fundamentals/18-network-debugging-tools.md)  
  Tools such as `nslookup`, `dig`, `ping`, and `traceroute`.

- [`/etc/hosts` File](./fundamentals/19-etc-hosts-file.md)  
  Local name resolution before DNS lookup.

- [What is Routing?](./fundamentals/20-what-is-routing.md)  
  How traffic moves between networks.

- [Static vs Dynamic Routing](./fundamentals/21-static-vs-dynamic-routing.md)  
  Comparing manually configured routes with dynamic routing.

- [Common Routing Protocols](./fundamentals/22-common-routing-protocols.md)  
  Protocols used to exchange routing information.

- [Subnetting & CIDR](./fundamentals/23-subnetting-and-cidr.md)  
  Breaking networks into smaller logical networks.

- [Binary: Yep 1s and 0s](./fundamentals/24-binary-yep-1s-and-0s.md)  
  Binary basics used for subnetting.

- [Calculating Subnets](./fundamentals/25-calculating-subnets.md)  
  Practical subnet calculation examples.

- [NAT](./fundamentals/26-nat-network-address-translation.md)  
  Network Address Translation and why it is used.

---

### Labs

- [Troubleshoot Like a PRO](./labs/27-troubleshoot-like-a-pro.md)  
  Structured troubleshooting approach for network issues.

- [Troubleshoot with Ping, Traceroute, nslookup](./labs/28-troubleshoot-with-ping-traceroute-nslookup.md)  
  Using core tools to investigate connectivity and DNS.

---

### Assignments

- [Cloud Networking](./assignments/29-cloud-networking.md)  
  Applying networking concepts to cloud infrastructure.

- [NGINX on AWS EC2 + Cloudflare](./assignments/30-aws-ec2-nginx-cloudflare.md)  
  Connecting a domain to an EC2-hosted NGINX server using DNS.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Breaking down how data actually flows across systems
- Using real tools instead of only reading theory
- Debugging network issues step by step
- Revisiting concepts until they make sense
- Treating confusion as part of the process

The goal is long-term understanding that transfers directly to **cloud, DevOps, and production environments**.

---

## Folder Purpose

### `fundamentals/`

Core networking concepts explained with reasoning and examples.

➡️ [Open fundamentals](./fundamentals)

---

### `labs/`

Hands-on networking practice and troubleshooting scenarios.

➡️ [Open labs](./labs)

---

### `assignments/`

Real-world networking scenarios and applied cloud networking tasks.

➡️ [Open assignments](./assignments)

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of networking through **core concepts and real-world behaviour**.

Rather than memorising definitions, the emphasis is on understanding:

• How data moves across networks  
• How protocols interact  
• How systems communicate in real environments  
• Why networking failures happen  

These notes build a foundation for **AWS, Kubernetes, load balancing, DNS, routing, and distributed systems**.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying networking knowledge through **hands-on debugging and investigation**.

Each lab includes:

• Real-world networking scenarios  
• Command-line investigation using tools like `ping`, `traceroute`, `nslookup`, and `curl`  
• Problem-solving workflows  
• Key takeaways for troubleshooting  

These labs simulate the kind of issues faced in **production environments**.

➡️ [View Labs](./labs)

---

## Assignments

The Assignments section focuses on applying networking knowledge through real-world infrastructure and connectivity tasks.

Assignment includes:

• Deploying real infrastructure (e.g. EC2 instances)  
• Configuring networking components like DNS and IP addressing  
• Connecting services to the internet through domains and ports  
• Validating connectivity using browsers and networking tools  

These assignments simulate how systems are actually deployed, exposed, and accessed in production environments.

➡️ [View Assignments](./assignments)
