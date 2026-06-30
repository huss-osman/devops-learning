# Networking Fundamentals

## Overview

This section introduces the core building blocks of **computer networks** and how systems communicate across **local and wide area networks**. It covers key topics including **network types**, **network devices**, **IP addressing**, and **protocols**.

The content is structured across the following areas:
- **Network Basics** (LAN, WAN)  
- **Network Devices** (routers, switches, firewalls)  
- **IP Addressing** (IPv4 & IPv6)  
- **MAC Addresses**  
- **Ports and Protocols (TCP, UDP)**  

This is useful in real-world environments where understanding how systems are identified and communicate is essential for **cloud networking** and infrastructure.

---

## Concepts Covered

### LAN (Local Area Network)

A **LAN** is a network that connects devices within a limited geographical area such as a home, office, school, or data centre. Devices on the same LAN can communicate directly with each other at high speeds.

---

### WAN (Wide Area Network)

A **WAN** connects multiple LANs across larger geographical distances using technologies provided by internet service providers. The internet itself is the largest example of a WAN.

---

### Routers

A **router** connects different networks together and forwards traffic between them. In most environments, routers are responsible for allowing devices on a local network to communicate with external networks such as the internet.

---

### Switches

A **switch** connects devices within the same local network and intelligently forwards traffic only to the intended destination device, improving network efficiency.

---

### Firewalls

A **firewall** filters incoming and outgoing traffic based on predefined rules. Firewalls are used to improve security by controlling which traffic is allowed to enter or leave a network.

---

### IPv4 Addressing

An **IPv4 address** is a 32-bit logical address used to uniquely identify devices on a network, typically written in dotted decimal format such as `192.168.1.10`.

---

### IPv6 Addressing

An **IPv6 address** is a 128-bit address designed to replace IPv4 and provide a significantly larger address space for the growing number of internet-connected devices.

---

### MAC Addresses

A **MAC address** is a unique hardware identifier assigned to a network interface card (NIC). Unlike IP addresses, MAC addresses operate at the local network level and are typically permanent.

---

### Ports

**Ports** are logical communication endpoints that allow multiple applications and services to use the network simultaneously. For example, HTTP commonly uses port `80` and HTTPS uses port `443`.

---

### TCP

**Transmission Control Protocol (TCP)** is a connection-oriented protocol that prioritises reliability by ensuring data arrives in the correct order and without loss.

---

### UDP

**User Datagram Protocol (UDP)** is a connectionless protocol that prioritises speed over reliability, making it suitable for applications such as streaming, gaming, and voice communication.

---

## Commands

This section is primarily concept-focused, but these tools will later be used to apply your knowledge:

- `ip` → View and manage **IP addressing**  
- `ping` → Test **connectivity between hosts**  
- `arp` → Inspect **MAC address mappings**  
- `netstat` / `ss` → View **network connections and ports**  

---

## Key Takeaways

- **Computer networks** allow systems to communicate and share data  
- **LAN and WAN** define different network scopes  
- Devices like **routers, switches, and firewalls** manage traffic  
- **IP and MAC addressing** uniquely identify devices  
- **Ports and protocols (TCP, UDP)** define how data is transmitted  

---

## Reflection

Working through networking fundamentals helped me understand how communication between systems actually works. It’s not just about sending data, but understanding how devices are identified and how traffic flows across **networks**.

I also learned that concepts like **IP addressing**, **MAC addresses**, and **protocols** are essential for real-world systems. This reinforces the importance of strong foundations when working with **cloud infrastructure** and troubleshooting network-related issues.
