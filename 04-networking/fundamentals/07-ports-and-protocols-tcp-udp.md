# Ports And Protocols TCP, UDP

## Overview

This section introduces **ports** and **protocols**, which define how devices communicate across networks. It explains how ports act as logical endpoints and how protocols like **TCP** and **UDP** control how data is transmitted.

This is useful in real-world environments where understanding how services communicate is essential. These concepts are critical for **web applications**, **APIs**, and **network troubleshooting** in cloud and infrastructure systems.

---

## Concepts Covered

### Ports

A **port** is a logical communication endpoint used by applications and services to send and receive network traffic. Ports allow multiple services to run on the same device while keeping their traffic separate.

---

### Well-Known Ports

Many common services use standard ports to make communication predictable. For example, **HTTP** commonly uses port `80`, **HTTPS** uses port `443`, **SSH** uses port `22`, and **DNS** uses port `53`.

---

### Network Protocols

A **protocol** is a set of rules that defines how data is formatted, transmitted, and received across a network. Protocols ensure that devices can communicate with each other reliably and consistently.

---

### Transmission Control Protocol (TCP)

**TCP** is a connection-oriented protocol that establishes a connection before transmitting data. It ensures packets arrive in the correct order, retransmits lost data, and prioritises reliability over speed.

---

### User Datagram Protocol (UDP)

**UDP** is a connectionless protocol that sends data without first establishing a connection. It provides faster communication but does not guarantee delivery, ordering, or retransmission of lost packets.

---

### Reliability vs Performance

TCP is commonly used when reliable communication is required, such as web traffic, file transfers, and remote administration. UDP is preferred for applications where speed and low latency are more important than guaranteed delivery.

---

### Common TCP and UDP Services

Many services rely on specific protocols depending on their requirements. For example, **HTTP**, **HTTPS**, and **SSH** use TCP, while **DNS**, **VoIP**, video streaming, and online gaming commonly use UDP.

---

### Client and Server Communication

When a client connects to a service, it communicates using the server's IP address and listening port. The protocol determines how that communication is established and maintained throughout the session.

---

## Commands

These tools help inspect ports, protocols, and network activity:

- `ss -tuln` → View **open ports and listening services**  
- `netstat -tuln` → Inspect **network connections and ports**  
- `curl` → Test **HTTP/HTTPS communication**  
- `nc` (netcat) → Test **port connectivity manually**  

---

## Key Takeaways

- **Ports** are logical endpoints used for communication (e.g. 80, 443)  
- **Protocols** define the rules for data transmission  
- **TCP** is connection-oriented and ensures reliable, ordered delivery  
- **UDP** is connectionless, faster, but less reliable  
- Different applications use different **ports and protocols**  

---

## Reflection

Learning about ports and protocols helped me understand how communication between systems is structured. It’s not just about sending data, but knowing where it goes and how it’s handled.

I also learned that **TCP** and **UDP** serve different purposes depending on reliability and speed requirements. This reinforces the importance of understanding communication methods when working with **web services**, **APIs**, and troubleshooting network issues.
