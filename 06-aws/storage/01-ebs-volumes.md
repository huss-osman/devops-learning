# EBS Volumes

## Overview

This section introduces **Amazon Elastic Block Store (EBS)**, AWS's block storage service designed for use with EC2 instances. EBS provides persistent storage that remains available independently of the lifecycle of an EC2 instance.

Understanding EBS is important because applications often require storage that survives instance restarts, stops, and replacements. EBS volumes provide this persistence while integrating closely with EC2 and other AWS services.

## Contents

* [What is an EBS Volume?](#what-is-an-ebs-volume)
* [Persistence](#persistence)
* [Availability Zones](#availability-zones)
* [EBS Use Cases](#ebs-use-cases)
* [Free Tier Storage](#free-tier-storage)

---

## What is an EBS Volume?

An **Elastic Block Store (EBS) Volume** is a virtual block storage device that can be attached to an EC2 instance.

Although it behaves similarly to a physical hard drive, an EBS volume exists entirely within AWS infrastructure and connects to instances over the network.

You can think of an EBS volume as:

* A virtual hard drive
* Persistent storage for EC2
* A storage device that can be attached and detached from instances

> [!NOTE]
> EBS volumes are network-attached storage rather than storage physically attached to the underlying host.

---

## Persistence

One of the main benefits of EBS is data persistence.

Unlike instance storage, data stored on an EBS volume remains available even if an EC2 instance is:

* Stopped
* Restarted
* Replaced
* Terminated (unless configured to delete the volume)

This makes EBS suitable for workloads where retaining data is critical.

Examples include:

* Databases
* Application files
* Logs
* Configuration data

---

## Availability Zones

EBS volumes are tied to a single **Availability Zone (AZ)**.

This means:

* An EBS volume can only be attached to instances within the same Availability Zone.
* EBS volumes cannot be directly attached to instances in another Availability Zone.
* Snapshots can be used to recreate volumes in different Availability Zones if required.

This design improves availability and performance while maintaining data locality.

---

## EBS Use Cases

Common EBS use cases include:

* Database storage
* Operating system disks
* Application storage
* Log storage
* Persistent application data

Because EBS storage persists independently of the EC2 instance lifecycle, it is commonly used for production workloads requiring durable storage.

---

## Free Tier Storage

AWS Free Tier includes:

* 30 GB of EBS storage per month
* General Purpose SSD storage
* Magnetic storage options

This allows new users to experiment with EC2 and EBS without incurring additional storage costs.

---

## Key Takeaways

* EBS provides persistent block storage for EC2 instances
* EBS behaves similarly to a virtual hard drive
* Data stored on EBS persists independently of the EC2 lifecycle
* EBS volumes are attached over the network
* EBS volumes are limited to a single Availability Zone
* Snapshots can be used to recreate volumes in other Availability Zones
* EBS is commonly used for databases, logs, and application data
* AWS Free Tier includes 30 GB of EBS storage

---

## Reflection

Learning about EBS volumes helped me understand how AWS separates compute from storage within cloud environments.

I also learned that persistent storage can survive the lifecycle of an EC2 instance, making EBS an essential component for databases, applications, and production workloads that require durable and reliable storage.
