# IP Address And MAC Address

## Overview

This section introduces how devices are identified on a network using **IP addressing** and **MAC addresses**. It explains the difference between **logical addressing (IP)** and **physical addressing (MAC)**, and how both work together in communication.

This is useful in real-world environments where understanding how devices are located and identified is essential. These concepts form the foundation for **network communication**, **routing**, and connectivity across systems.

---

## Concepts Covered

### IP Addresses

An **IP address** is a logical address assigned to a device that allows it to communicate across networks. IP addresses identify both the device and the network it belongs to, enabling data to be routed to the correct destination.

---

### IPv4 Addressing

**IPv4** uses 32-bit addresses and is typically written in dotted decimal notation such as `192.168.1.10`. Due to the limited number of available addresses, technologies such as NAT are commonly used to conserve address space.

---

### IPv6 Addressing

**IPv6** uses 128-bit addresses and was introduced to overcome IPv4 address exhaustion. It provides a significantly larger address space and supports the growing number of internet-connected devices.

---

### MAC Addresses

A **MAC (Media Access Control) address** is a unique physical identifier assigned to a network interface card (NIC). MAC addresses are typically permanent and are used for communication within the local network.

---

### Logical vs Physical Addressing

IP addresses are considered **logical addresses** because they can change depending on the network a device joins, whereas MAC addresses are **physical addresses** that are tied to the hardware itself.

---

### Network and Data Link Layers

IP addressing operates at the **Network Layer (Layer 3)** of the OSI model and is responsible for routing traffic between networks. MAC addressing operates at the **Data Link Layer (Layer 2)** and is responsible for communication within the local network.

---

### Address Resolution Protocol (ARP)

**ARP** is used to map IP addresses to MAC addresses on a local network. Before a device can communicate locally, it must first determine the MAC address associated with the destination IP address.

---

### Communication Between Devices

Successful network communication requires both IP and MAC addresses. IP addresses determine where data should go across networks, while MAC addresses ensure the data reaches the correct device on the local network.

---

## Commands

These tools help inspect and work with addressing in real systems:

- `ip a` → View **IP addresses and network interfaces**  
- `ip route` → View how traffic is **routed between networks**  
- `arp` → View **MAC address mappings** on the network  
- `ping` → Test **connectivity between IP addresses**  

---

## Key Takeaways

- **IP addresses** uniquely identify devices across networks  
- **IPv4** uses 32-bit addresses, while **IPv6** uses 128-bit addresses  
- **MAC addresses** are physical identifiers assigned to network interfaces  
- IP works at the network layer, while MAC operates at the data link layer  
- Both IP and MAC are required for successful **network communication**  

---

## Reflection

Learning about IP and MAC addressing helped me understand how devices are identified at different levels within a network. It’s not just about sending data, but knowing how systems locate each other and communicate correctly.

I also learned that **IP addresses** and **MAC addresses** work together to enable reliable communication. This reinforces the importance of understanding addressing when working with **network troubleshooting**, **cloud systems**, and real-world infrastructure.
