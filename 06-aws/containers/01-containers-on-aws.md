# Containers On AWS

## Overview

This section introduces **containers and Docker**, two technologies that have fundamentally changed how modern applications are packaged, deployed, and managed across different environments.

Containers package an application together with its dependencies, libraries, configuration files, and runtime environment into a single portable unit that can run consistently across development, testing, and production environments.

## Contents

* [What is Docker?](#what-is-docker)
* [What is a Container?](#what-is-a-container)
* [Why Use Containers?](#why-use-containers)
* [Container Images](#container-images)
* [Containers vs Virtual Machines](#containers-vs-virtual-machines)

---

## What is Docker?

Docker is a platform used to build, package, distribute, and run applications using containers.

It allows developers and operations teams to package applications together with everything they require to run into a portable and reproducible environment.

Applications packaged with Docker can run on:

* Local machines
* Development environments
* Testing environments
* Cloud environments
* Production environments

As long as Docker is installed, the application behaves consistently regardless of the underlying infrastructure.

---

## What is a Container?

A container is a lightweight and isolated runtime environment that contains everything an application needs to execute.

This includes:

* Application code
* Libraries
* Dependencies
* Runtime binaries
* Configuration files

Containers share the host operating system kernel while remaining isolated from other running containers.

Because of this, containers are significantly more lightweight than traditional virtual machines.

---

## Why Use Containers?

Containers provide several advantages over traditional deployment methods.

### Portability

Applications can run consistently across different environments without modification.

---

### Consistency

The same container image can be used throughout development, testing, staging, and production environments.

---

### Speed

Containers start in seconds rather than minutes because they do not require a full operating system to boot.

---

### Efficiency

Containers consume fewer system resources compared to virtual machines because they share the host kernel.

---

### Simplicity

Applications and dependencies are packaged together, simplifying deployments and reducing configuration drift.

---

## Container Images

Docker uses **container images** as blueprints for creating containers.

A container image contains:

* Application code
* Dependencies
* Operating system packages
* Runtime configuration
* Startup instructions

When Docker runs an image, it creates a running container instance from that image.

A useful way to think about this relationship is:

```text
Container Image → Blueprint
Container → Running Application
```

One image can be used to create multiple containers.

---

## Containers vs Virtual Machines

| Feature | Containers | Virtual Machines |
|----------|-----------|------------------|
| Operating System | Shared Host OS Kernel | Full Guest OS |
| Startup Time | Seconds | Minutes |
| Resource Usage | Lightweight | Heavier |
| Portability | Very High | Moderate |
| Density | High | Lower |

Containers are generally preferred for modern cloud-native and microservice architectures due to their speed and efficiency.

---

## Key Takeaways

* Docker is a platform used to build and run containers
* Containers package applications and dependencies together
* Containers solve the "works on my machine" problem
* Container images act as blueprints for running containers
* Containers are lightweight compared to virtual machines
* Containers start quickly and use fewer resources
* Docker enables consistent deployments across environments
* Containers are widely used in cloud-native architectures and microservices
* One container image can create multiple running containers
* Containers are a foundational technology for modern DevOps practices

---

## Reflection

Learning about containers and Docker helped me understand how modern applications achieve portability and consistency across different environments.

I also learned how container images act as reusable blueprints that allow applications to be deployed quickly and reliably regardless of the underlying infrastructure. Understanding containers provides the foundation for technologies such as Kubernetes, Amazon ECS, and modern cloud-native application development.
