<img width="1000" height="500" alt="imageedit_1_5708764918" src="https://github.com/huss-osman/devops-learning/blob/main/images/DockerBanner.png" />

# Docker

![Containers](https://img.shields.io/badge/Containers-Docker-2496ED?logo=docker&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-blue?logo=linux)
![Focus](https://img.shields.io/badge/Focus-Containerisation-purple?logo=docker&logoColor=white)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Docker** and **containerisation** through practical container workflows.

Docker is a major part of modern infrastructure and application deployment. It allows applications and their dependencies to be packaged into portable environments that run consistently across local systems, cloud platforms, and CI/CD pipelines.

The focus throughout this repository is understanding **how containers, Dockerfiles, images, and networking work** through practical learning.

---

## 🧠 New to Docker? Read This First

- Docker can feel confusing at first — that’s normal
- Focus on understanding **images, containers, Dockerfiles, and networking**
- Use tools like `docker ps`, `docker logs`, `docker exec`, and `docker inspect`
- Break containers intentionally to improve debugging skills
- Revisit concepts multiple times through hands-on practice

> [!IMPORTANT]
> Understanding Docker is extremely important in modern DevOps, cloud, CI/CD, and application deployment workflows.

---

## Learning Objectives

By working through this module, I aimed to:

- Understand what containers are and why they matter
- Learn the difference between images and containers
- Understand Docker Engine and Docker Desktop
- Build Docker images using Dockerfiles
- Run and manage containers locally
- Understand container isolation and portability
- Learn core Docker troubleshooting commands
- Build a strong foundation for future Docker networking and orchestration topics

---

## Topics Covered

### Fundamentals

- [Introduction to Docker](./fundamentals/01-introduction-to-docker.md)  
  Introduction to Docker, containers, and modern containerisation.

- [What are Containers?](./fundamentals/02-what-are-containers.md)  
  Understanding what containers are and how they work.

- [Benefits of Containers](./fundamentals/03-benefits-of-containers.md)  
  Why containers improve portability, consistency, and deployments.

- [What is Docker?](./fundamentals/04-what-is-docker.md)  
  Understanding Docker as a platform for building and running containers.

- [Images and Containers](./fundamentals/05-images-and-containers.md)  
  Learning the difference between Docker images and containers.

- [Importance in Modern Development](./fundamentals/06-importance-in-modern-development.md)  
  Why containers became essential in modern infrastructure and DevOps.

- [VMs vs Containers](./fundamentals/07-vms-vs-containers.md)  
  Comparing virtual machines with containers and understanding the trade-offs.

- [Docker Installation](./fundamentals/08-docker-installation.md)  
  Installing Docker Desktop and running basic Docker commands.

- [Understanding the Dockerfile](./fundamentals/09-understanding-the-dockerfile.md)  
  Learning how Dockerfiles define container images.

- [Introduction to Docker Networking](./fundamentals/10-introduction-to-docker-networking.md)  
  Understanding how containers communicate using Docker networks.

- [Introduction to Docker Compose](./fundamentals/11-introduction-to-docker-compose.md)  
  Managing multi-container applications with Compose.

- [Why Docker Compose Matters](./fundamentals/12-why-docker-compose-is-important.md)  
  Understanding the role of Compose in DevOps workflows.

- [Docker Registries](./fundamentals/13-docker-registries.md)  
  Understanding how container images are stored and shared.

- [Important Docker Commands](./fundamentals/18-important-docker-commands.md)  
  Common Docker commands used for images, containers, logs, and cleanup.

- [Docker Swarm vs. Kubernetes](./fundamentals/20-important-docker-commands.md)  
  Comparing Docker Swarm and Kubernetes for container orchestration.

- [Why Should You Use Orchestration Tools?](./fundamentals/21-why-use-orchestration-tools.md)  
  Understanding why orchestration tools are important for scalable container environments.

---

### Labs

- [DockerHub](./labs/14-dockerhub.md)  
  Using DockerHub as a public container registry.

- [Pushing Images to Amazon ECR](./labs/15-pushing-images-to-amazon-ecr.md)  
  Publishing Docker images to AWS Elastic Container Registry.

- [Using Images from ECR](./labs/16-using-images-from-ecr.md)  
  Pulling and running images from a private AWS registry.

- [Debugging Networking Issues](./labs/17-debugging-networking-issues.md)  
  Troubleshooting Docker networking problems between containers and services.

- [Multi-Stage Builds](./labs/19-multistage-builds.md)  
  Creating smaller, cleaner Docker images using multi-stage builds.
  
---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Building and breaking containers to understand behaviour
- Using real Docker commands instead of only reading theory
- Understanding how Docker actually works internally
- Practicing troubleshooting and debugging
- Building a strong foundation before moving into orchestration and production tooling

The goal is long-term understanding that transfers directly into **cloud infrastructure**, **CI/CD**, and modern **DevOps environments**.

---

## Folder Purpose

### `fundamentals/`

Core Docker and containerisation concepts explained using practical examples and hands-on commands.

➡️ [Open fundamentals](./fundamentals)

---

### `labs/`

Hands-on Docker debugging and troubleshooting exercises.

➡️ [Open labs](./labs)

---

### `assignments/`

Practical Docker projects and containerisation challenges.

➡️ [Open assignments](./assignments)

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of Docker through **core container concepts and real-world behaviour**.

Rather than memorising commands, the emphasis is on understanding:

• How containers are created and executed  
• How Docker images work  
• How Docker Engine manages containers  
• Why portability and consistency matter  
• How Docker supports modern DevOps workflows  

These notes build a strong foundation for future topics such as **Docker Compose**, **Kubernetes**, **CI/CD**, and **cloud deployments**.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying Docker knowledge through **hands-on debugging and investigation**.

Each lab includes:

• Real-world container errors  
• Command-line investigation using Docker tools  
• Troubleshooting service communication and networking  
• Key takeaways for container debugging  

These labs simulate the kind of issues faced in **development and production environments**.

➡️ [View Labs](./labs)

---

## Assignments

The Assignments section focuses on applying Docker knowledge through real-world containerisation tasks.

Assignments include:

• Building web applications inside containers  
• Writing Dockerfiles  
• Running multi-container applications with Docker Compose  
• Connecting Flask and Redis services  
• Adding persistence, environment variables, and load balancing  

These assignments simulate how applications are packaged, connected, and prepared for deployment in real DevOps workflows.

➡️ [View Assignments](./assignments)
