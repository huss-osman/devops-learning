<p align="center">
  <img width="540" alt="Linux Banner" src="https://github.com/user-attachments/assets/a1a63ed9-fca2-4b34-b873-a20dd4fb54a2" />
</p>

# Docker Assignments

![Containers](https://img.shields.io/badge/Containers-Docker-2496ED?logo=docker&logoColor=white)
![Focus](https://img.shields.io/badge/Focus-Containerisation-purple?logo=docker&logoColor=white)
![Assignments](https://img.shields.io/badge/Assignments-1-darkgreen)

This assignment focuses on reinforcing **Docker and containerisation fundamentals** through structured, real-world challenges.

Assignment must:

- Demonstrate understanding of containers and Dockerfiles  
- Show clear configuration steps and reasoning  
- Validate communication between services  
- Reflect real-world multi-container deployment workflows  

> [!TIP]  
> Attempt the assignment independently before searching for solutions.  
> Use tools like `docker ps`, `docker logs`, `docker exec`, and `docker compose` to debug behaviour.

---

### Assignment — NGINX Flask Redis App  
**Folder:** [nginx-flask-redis-app](./nginx-flask-redis-app/README.md)  
**Concepts:** Flask, Redis, NGINX, Docker Compose, service communication  

**Focus:** Building a multi-container application with reverse proxying and load balancing using Docker Compose.

**Requirements**

- Create a Flask application with multiple routes  
- Use Redis as a key-value data store  
- Configure NGINX as a reverse proxy and load balancer  
- Write Dockerfiles for the application services  
- Use Docker Compose to orchestrate services  
- Validate communication between containers  
- Test application functionality across services  
- Configure persistent storage for Redis using Docker volumes  
- Read Redis connection details using environment variables  
- Scale the Flask application across multiple containers

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
