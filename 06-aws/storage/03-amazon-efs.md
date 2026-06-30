# Amazon EFS

## Overview

This section introduces **Amazon Elastic File System (EFS)**, AWS's managed file storage service designed to provide shared access across multiple EC2 instances simultaneously.

Unlike EBS volumes, which are typically attached to a single instance, EFS provides a shared file system that can be mounted by many instances at the same time, making it ideal for distributed and highly available applications.

## Contents

* [What is Amazon EFS?](#what-is-amazon-efs)
* [How EFS Works](#how-efs-works)
* [Multi-AZ Availability](#multi-az-availability)
* [Scalability](#scalability)
* [Common Use Cases](#common-use-cases)
* [EFS vs EBS](#efs-vs-ebs)

---

## What is Amazon EFS?

Amazon **Elastic File System (EFS)** is a fully managed network file system provided by AWS.

EFS allows multiple EC2 instances to mount and access the same file system simultaneously, similar to a shared network drive.

You can think of EFS as:

* Shared cloud storage
* A managed NFS server
* A network file system for EC2 instances

---

## How EFS Works

EFS uses the **Network File System (NFS)** protocol to allow Linux instances to mount the file system.

Once mounted, EC2 instances can:

* Read files
* Write files
* Share application data
* Access common resources

Because the file system exists independently of the EC2 instances, the data remains available even if individual servers fail or are replaced.

---

## Multi-AZ Availability

One of the biggest advantages of EFS is that it is designed for **Multi-AZ deployments**.

EFS automatically stores data redundantly across multiple Availability Zones within a region, providing:

* High availability
* Durability
* Fault tolerance

This makes EFS suitable for applications that require continuous access to shared files.

---

## Scalability

Unlike traditional storage solutions, EFS scales automatically.

As more files are added:

* Storage capacity increases automatically
* No resizing is required
* No provisioning is required

This removes the operational overhead of managing file storage capacity.

---

## Common Use Cases

EFS is commonly used for:

* Content Management Systems (CMS)
* Shared web application files
* Container workloads
* Analytics platforms
* Distributed applications
* Shared user directories

EFS is particularly useful when multiple application servers require access to the same files simultaneously.

---

## EFS vs EBS

| Feature                 | EBS                  | EFS                        |
| ----------------------- | -------------------- | -------------------------- |
| Storage Type            | Block Storage        | File Storage               |
| Access Method           | Attached to Instance | Mounted over Network       |
| Multi-Instance Access   | Typically No         | Yes                        |
| Availability Zone Scope | Single AZ            | Multi-AZ                   |
| Scaling                 | Manual Provisioning  | Automatic Scaling          |
| Typical Use Case        | Databases, OS Disks  | Shared Application Storage |

> [!NOTE]
> EFS is significantly more expensive than General Purpose SSD EBS volumes and should only be used when shared storage capabilities are required.

---

## Key Takeaways

* EFS is AWS's managed shared file storage service
* Multiple EC2 instances can mount the same EFS file system
* EFS uses the NFS protocol
* EFS automatically replicates data across multiple Availability Zones
* Storage scales automatically as usage increases
* EFS is ideal for shared application data
* EFS provides high availability and durability
* EFS is generally more expensive than EBS
* EFS should be used when multiple instances require access to the same files

---

## Reflection

Learning about Amazon EFS helped me understand the difference between block storage and shared file storage within AWS environments.

I also learned how EFS enables multiple EC2 instances to access the same data simultaneously while providing automatic scaling and high availability across multiple Availability Zones.
