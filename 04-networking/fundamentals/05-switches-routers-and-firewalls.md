# Switches Routers And Firewalls

## Overview

This section introduces key **networking components** used to control how data moves across **networks**. It focuses on **switches**, **routers**, and **firewalls**, and how each plays a role in communication and security.

This is useful in real-world environments where understanding how traffic flows and is controlled is essential. These components form the backbone of **network infrastructure**, enabling connectivity between systems while enforcing **security and access control**.

---

## Concepts Covered

### Switches

A **switch** connects devices within the same local network (LAN) and forwards traffic only to the intended destination device. This improves network efficiency by reducing unnecessary traffic between systems.

---

### Routers

A **router** connects different networks together and determines the best path for data to travel between them. Routers are responsible for allowing local networks to communicate with external networks such as the internet.

---

### Firewalls

A **firewall** is a security device or software solution that monitors and filters incoming and outgoing traffic based on predefined rules. Firewalls help protect systems from unauthorised access and malicious traffic.

---

### Traffic Forwarding

Network devices inspect incoming traffic and decide where it should be sent next. Switches forward traffic within a network, while routers forward traffic between different networks.

---

### Network Segmentation

Routers and firewalls can be used to separate networks into smaller sections or subnets. This improves security, reduces broadcast traffic, and helps isolate systems from one another.

---

### Routing Decisions

Routers use routing tables to determine the most appropriate path for traffic to reach its destination. These decisions allow communication between local networks, remote offices, and cloud environments.

---

### Access Control and Security

Firewalls enforce security policies by allowing or denying traffic based on criteria such as IP addresses, ports, and protocols. This helps organisations control access to services and resources.

---

### Enterprise and Cloud Networking

Switches, routers, and firewalls are fundamental components in modern data centres and cloud environments. Understanding their roles is essential when designing, securing, and troubleshooting production infrastructure.

---

## Commands

This section is concept-focused, but these tools will later be used to observe network behaviour:

- `ip route` → View how traffic is **routed between networks**  
- `ping` → Test **connectivity between devices**  
- `traceroute` → Trace how packets move through **routers**  
- `ss` / `netstat` → Inspect **active connections and ports**  

---

## Key Takeaways

- **Switches** connect devices within the same network (LAN)  
- **Routers** connect different networks and direct traffic between them  
- **Firewalls** control and filter incoming and outgoing traffic  
- Switches operate within networks, while routers move data between them  
- Firewalls are critical for **network security and access control**  

---

## Reflection

Learning about switches, routers, and firewalls helped me understand how data is actually controlled as it moves across networks. It’s not just about connectivity, but how traffic is directed, managed, and secured.

I also learned that each component has a specific role in maintaining reliable and secure communication. This reinforces the importance of understanding **network infrastructure** when working with **cloud systems** and troubleshooting real-world connectivity issues.
