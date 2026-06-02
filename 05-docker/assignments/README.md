# Docker Assignments

![Containers](https://img.shields.io/badge/Containers-Docker-2496ED?logo=docker&logoColor=white)
![Focus](https://img.shields.io/badge/Focus-Containerisation-purple?logo=docker&logoColor=white)
![Assignments](https://img.shields.io/badge/Assignments-8-darkgreen)

These assignments focus on reinforcing **Docker and containerisation fundamentals** through structured, real-world challenges.

Assignments must:

- Demonstrate understanding of containers and Dockerfiles  
- Show clear configuration and reasoning  
- Validate communication between services  
- Reflect real-world DevOps and deployment workflows  

> [!TIP]
> Attempt the assignments independently before reviewing solutions.  
> Use tools like `docker ps`, `docker logs`, `docker exec`, and `docker compose` to debug behaviour.

---

### Assignment — Containers Challenge  
**File:** [32-containers-challenge.md](./32-containers-challenge.md)  
**Concepts:** Flask, Redis, Docker Compose, service communication  

**Focus:** Building a multi-container application using Docker Compose.

**Requirements**

- Create a Flask application with multiple routes  
- Use Redis as a key-value data store  
- Write a Dockerfile for the Flask application  
- Use Docker Compose to orchestrate services  
- Validate communication between containers  
- Test application functionality across services  

---

## Bonus Challenges

The following bonus tasks extend the **Containers Challenge** by introducing more realistic Docker and cloud-native workflows.

### Persistent Storage for Redis  
**File:** [33-persistent-storage.md](./33-persistent-storage.md)  
**Concepts:** Docker volumes, persistence  

**Focus:** Persisting Redis data beyond the container lifecycle using Docker volumes.

---

### Environment Variables  
**File:** [34-environment-variables.md](./34-environment-variables.md)  
**Concepts:** Configuration management, environment variables  

**Focus:** Reading Redis connection details from environment variables for cleaner container configuration.

---

### Scaling the Flask Application  
**File:** [35-scaling-the-flask-application.md](./35-scaling-the-flask-application.md)  
**Concepts:** Scaling, load balancing, container orchestration  

**Focus:** Running multiple Flask container instances and distributing traffic between services.

---

## Hands-On Docker Repository

Alongside these fundamentals notes, I also maintain a hands-on Docker repository focused on practical containerisation workflows and real-world experimentation.

The repository includes Docker commands, image creation, container management, troubleshooting, optimisation, and step-by-step learning progression.

➡️ [View Docker Learning Repository](https://github.com/huss-osman/docker-learning)

All Docker projects, experiments, and container workflows are continuously pushed and documented there throughout the learning process.

---

## Skills Reinforced

- Building Docker images  
- Writing Dockerfiles  
- Running multi-container applications  
- Docker Compose workflows  
- Service communication and networking  
- Persistent storage and configuration management  
- Debugging and troubleshooting containers  
- Scaling containerised applications  

---

## Learning Outcome

These assignments bridge the gap between understanding containers and deploying real multi-service applications.

By building and debugging Docker environments practically, they reinforce the workflows commonly used across modern DevOps and cloud-native environments.
