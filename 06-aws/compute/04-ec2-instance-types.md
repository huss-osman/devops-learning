# EC2 Instance Types

## Overview

This section introduces AWS EC2 Instance Types and explains how AWS provides different instance families designed for specific workloads. Choosing the correct instance type is important because different applications require different combinations of CPU, memory, storage, and networking performance.

Understanding instance types helps optimise performance, scalability, and cost by ensuring workloads run on infrastructure that matches their requirements.

## Contents

* [Why Instance Types Matter](#why-instance-types-matter)
* [General Purpose Instances](#general-purpose-instances)
* [Compute Optimized Instances](#compute-optimized-instances)
* [Memory Optimized Instances](#memory-optimized-instances)
* [Storage Optimized Instances](#storage-optimized-instances)
* [Accelerated Computing Instances](#accelerated-computing-instances)
* [HPC Optimized Instances](#hpc-optimized-instances)
* [Understanding Instance Naming](#understanding-instance-naming)

---

### Why Instance Types Matter

Not all EC2 instances provide the same resources.

Some workloads require more CPU power, while others require additional memory, storage performance, or specialised hardware.

AWS provides multiple instance families to support different use cases while helping organisations balance performance and cost.

> [!NOTE]
> Selecting the correct instance type is important because under-sized instances can impact performance, while over-sized instances may increase costs unnecessarily.

---

### General Purpose Instances

General Purpose instances provide a balanced combination of:

* CPU
* Memory
* Networking

They are suitable for many common workloads including:

* Web servers
* Development environments
* Small databases
* Business applications

Examples:

* T Series
* M Series

---

### Compute Optimized Instances

Compute Optimized instances provide additional processing power.

These instances are designed for workloads that require high CPU performance.

Common use cases include:

* Batch processing
* Scientific computing
* Gaming servers
* High-performance web servers

Examples:

* C Series

---

### Memory Optimized Instances

Memory Optimized instances provide larger amounts of RAM.

These are designed for applications that need fast access to large datasets.

Common use cases include:

* In-memory databases
* Big data analytics
* Real-time processing
* High-performance applications

Examples:

* R Series

---

### Storage Optimized Instances

Storage Optimized instances are designed for workloads requiring high-performance storage access.

Common use cases include:

* Data warehousing
* NoSQL databases
* Distributed file systems
* Large-scale storage workloads

These instances provide high throughput and low latency access to storage resources.

---

### Accelerated Computing Instances

Accelerated Computing instances provide specialised hardware such as:

* GPUs
* FPGAs

These resources accelerate specific workloads that would otherwise require significant processing time.

Common use cases include:

* Machine Learning
* Artificial Intelligence
* Video Rendering
* Scientific Simulations

---

### HPC Optimized Instances

HPC stands for High Performance Computing.

These instances are designed for computationally intensive workloads requiring:

* High CPU performance
* Fast networking
* Low latency communication

Common use cases include:

* Engineering simulations
* Weather modelling
* Scientific research
* Large-scale analytics

---

### Understanding Instance Naming

AWS uses a naming convention to describe instance types.

Example:

```text
M5.2xlarge
```

---

#### Instance Class

```text
M
```

The first letter identifies the instance family.

Examples:

* M → General Purpose
* C → Compute Optimized
* R → Memory Optimized
* T → Burstable General Purpose

---

#### Generation

```text
5
```

The number represents the generation.

Higher generations generally provide:

* Better performance
* Improved efficiency
* Newer hardware

---

#### Size

```text
2xlarge
```

The size determines the amount of resources available.

Common sizes include:

* small
* medium
* large
* xlarge
* 2xlarge
* 4xlarge
* 8xlarge

Larger sizes provide:

* More CPU
* More Memory
* Higher performance

They also generally cost more.

> [!IMPORTANT]
> Choosing an instance type is a balancing act between performance requirements and cost optimisation. The goal is to provide enough resources for the workload without paying for unused capacity.

---

## Key Takeaways

* AWS provides multiple EC2 instance families for different workloads
* General Purpose instances offer balanced resources
* Compute Optimized instances provide additional CPU power
* Memory Optimized instances provide additional RAM
* Storage Optimized instances focus on storage performance
* Accelerated Computing instances provide GPUs and FPGAs
* HPC instances support computationally intensive workloads
* Instance names contain information about family, generation, and size
* Correct instance selection improves performance and cost efficiency

---

## Reflection

Learning about EC2 Instance Types helped me understand that cloud infrastructure is not a one-size-fits-all solution. Different applications have different resource requirements, and AWS provides specialised instance families to support those needs.

I also learned how instance naming conventions communicate important information about the instance family, generation, and size. Understanding these differences is important for designing efficient cloud environments that balance performance, scalability, and cost.
