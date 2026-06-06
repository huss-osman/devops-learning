# Introduction To Docker

## Overview

This module introduces the core concepts of **Docker** and **containerisation** used in modern DevOps environments. It focuses on understanding how applications are packaged, isolated, deployed, and managed consistently across different systems.

This is useful in real-world environments where understanding **containers**, **images**, and **service communication** is essential. Instead of relying on commands blindly, building a strong foundation in Docker helps make sense of how applications behave and how modern infrastructure is deployed.

---

## What You’ll Learn

This module is structured to take you from fundamentals to practical, real-world containerisation concepts:

### Fundamentals

- [Introduction to Docker](./01-introduction-to-docker.md)  
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

### Assignments

- [NGINX Flask Redis App](./assignments/20-nginx-flask-redis-app.md)  
  Building a multi-container Flask and Redis application with Docker Compose.
  
---

## Commands

While this section is concept-focused, you will later apply your knowledge using tools such as:

- `docker ps` → View running **containers**  
- `docker images` → View local **Docker images**  
- `docker logs` → Inspect **container logs**  
- `docker exec` → Access a running **container shell**  
- `docker compose up` → Start **multi-container applications**  

---

## Key Takeaways

- **Docker** enables consistent application deployment across environments  
- Containers package applications together with their dependencies  
- Docker simplifies development, testing, and deployment workflows  
- Understanding containers is essential before working with **Kubernetes** and cloud-native systems  
- Strong Docker fundamentals improve troubleshooting and operational understanding  

---

## Reflection

Working through Docker fundamentals helped me understand how modern applications are packaged and deployed consistently across environments. It’s not just about running containers, but understanding how services communicate, how images are built, and how applications behave inside isolated environments.

I also learned that concepts like **Dockerfiles**, **networking**, and **Compose workflows** are critical in real-world DevOps environments. This reinforces the importance of strong containerisation knowledge before moving into orchestration tools such as **Kubernetes** and production cloud deployments.
