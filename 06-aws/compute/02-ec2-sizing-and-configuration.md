# EC2 Sizing And Configuration

## Overview

This section explores the key configuration options available when launching an Amazon EC2 instance. It focuses on selecting the appropriate operating system, compute resources, storage, networking, and security settings required to support different workloads.

Understanding EC2 sizing and configuration is important because choosing the wrong resources can impact application performance, availability, security, and cost. Proper sizing helps ensure applications have the resources they need while avoiding unnecessary infrastructure expenses.

## Contents

* [Operating System](#operating-system)
* [Compute Power](#compute-power)
* [Memory](#memory)
* [Storage Options](#storage-options)
* [Networking](#networking)
* [Security Groups](#security-groups)
* [EC2 User Data](#ec2-user-data)

---

### Operating System

When launching an EC2 instance, one of the first decisions is selecting an operating system.

AWS supports multiple operating systems including:

* Linux
* Windows
* macOS

The operating system chosen depends on application requirements, software compatibility, and administrative preferences.

---

### Compute Power

EC2 allows users to select the amount of compute power required for their workload.

This includes:

* Virtual CPUs (vCPUs)
* Processor performance
* Number of cores

Workloads such as machine learning, analytics, and high-performance applications typically require more compute resources than lightweight applications.

---

### Memory

Memory (RAM) is another important sizing consideration.

Applications that process large amounts of data or support many simultaneous users often require additional memory to operate efficiently.

Choosing the correct memory allocation helps improve performance and application responsiveness.

---

### Storage Options

AWS provides multiple storage options for EC2 instances.

#### Elastic Block Store (EBS)

EBS provides persistent storage attached to EC2 instances.

Think of EBS as a virtual hard drive used to store:

* Operating systems
* Applications
* Data

---

#### Elastic File System (EFS)

EFS provides shared file storage that can be accessed by multiple EC2 instances simultaneously.

This makes it useful for applications that require shared storage across multiple servers.

---

#### Instance Store

Instance Store provides temporary storage physically attached to the host machine.

Benefits include:

* Very fast performance
* Low latency

However:

* Data is lost if the instance is stopped or terminated

> [!IMPORTANT]
> Instance Store should only be used for temporary data that can be recreated if lost.

---

### Networking

Networking settings determine how an EC2 instance communicates with other systems.

Key options include:

* Network performance
* Network interfaces
* Public IP addresses
* Private IP addresses

Assigning a public IP address allows an instance to be accessed directly from the internet.

---

### Security Groups

Security Groups act as virtual firewalls for EC2 instances.

They control:

* Inbound traffic
* Outbound traffic
* Allowed ports
* Allowed IP addresses

Examples:

* Port 22 → SSH
* Port 80 → HTTP
* Port 443 → HTTPS

> [!NOTE]
> Security Groups are one of the most important security controls used when deploying EC2 instances.

---

### EC2 User Data

EC2 User Data allows scripts to run automatically when an instance launches for the first time.

Common uses include:

* Installing software
* Updating packages
* Configuring applications
* Running startup scripts

This process is often referred to as bootstrapping.

User Data helps automate server configuration and reduces manual setup tasks.

---

## Key Takeaways

* EC2 instances can be customised to meet application requirements
* AWS supports multiple operating systems including Linux, Windows, and macOS
* Compute resources determine processing power and performance
* Memory sizing impacts application responsiveness
* EBS provides persistent storage for EC2 instances
* EFS provides shared storage across multiple instances
* Instance Store provides temporary high-performance storage
* Networking settings control connectivity and internet access
* Security Groups act as virtual firewalls
* EC2 User Data automates instance configuration during launch
* Proper sizing helps balance performance and cost

---

## Reflection

Learning about EC2 sizing and configuration helped me understand how many decisions are involved when deploying cloud infrastructure. Launching a virtual machine is not just about selecting an operating system, but also choosing the right compute resources, storage, networking, and security settings based on application requirements.

I also learned how services such as EBS, EFS, Security Groups, and User Data work alongside EC2 to create flexible and scalable cloud environments. These configuration choices play an important role in performance, cost optimisation, security, and overall application reliability.
