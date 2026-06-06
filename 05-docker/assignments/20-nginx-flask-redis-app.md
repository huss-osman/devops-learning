# NGINX Flask Redis App

![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-000000?logo=flask&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-DC382D?logo=redis&logoColor=white)
![NGINX](https://img.shields.io/badge/NGINX-009639?logo=nginx&logoColor=white)

<p align="center">
<img width="1000" alt="App_Preview (1)" src="https://github.com/user-attachments/assets/f49106b2-3f5e-49e9-8eb5-e8d2d87cae17" />
</p>

---

## Overview

This project brings together containerisation, reverse proxying, service communication, load balancing, and workflows.

The objective is to deploy a scalable Flask application using Docker, NGINX, and Redis across container services.

By completing this project, the setup simulates how modern containerised applications are orchestrated at scale.

---

## Repository Structure

```bash
nginx-flask-redis-app/
├── app/
│   ├── main.py
│   ├── requirements.txt
│   └── static/
│       └── images/
│           ├── Architecture_Diagram.png
│           ├── App_Preview.png
│           ├── Environment_Variables.png
│           ├── Flask_Application_Code.png
│           ├── NGINX_Load_Balancing.png
│           ├── Redis_Configuration.png
│           ├── Redis_Persistence_strg.png
│           └── trackerio-logo.png
│
├── nginx/
│   └── nginx.conf
│
├── Dockerfile
├── docker-compose.yml
├── .gitignore
└── README.md
```

---

## Objective

The goal of this project was to:

- Build and containerise a Flask web application
- Use Redis as a key-value store for persistent counting
- Configure NGINX as a reverse proxy and load balancer
- Use Docker Compose to orchestrate multiple services
- Validate communication between containers
- Configure persistent storage using Docker volumes
- Manage Redis connection details using environment variables
- Practice real-world container networking and troubleshooting workflows

---

## Architecture

Requests flow through the stack like this:

```bash
User → Nginx → Flask → Redis
```

Nginx acts as a reverse proxy, receiving incoming requests and forwarding them to the Flask app. Flask handles the routing and business logic, and reads from or writes to Redis when it needs to store or retrieve the visit count. Redis persists the count using a named Docker volume, so the data survives container restarts.

<p align="center">
  <img width="700" alt="Flask Application" src="https://github.com/huss-osman/nginx-flask-redis-app/blob/main/app/static/images/Architecture%20Diagram.png" />
</p>

> [!NOTE]
> The application is built as a multi-container environment using Docker Compose.
>
> NGINX routes incoming traffic to Flask application containers, while Redis stores and retrieves the visit count data.

> [!IMPORTANT]
> Docker Compose manages:
>
> - Flask application containers
> - Redis service
> - NGINX reverse proxy
> - Container networking
> - Service communication
> - Persistent Redis storage

---

## What It Does

The application includes multiple routes and services working together through Docker Compose.

Routes available:

* `/` → Main landing page
* `/count` → Displays and increments the Redis visit counter
* `/about` → Explains the project structure and technologies used

---

## How It Works

1. A user visits the application through the exposed NGINX service  
2. NGINX receives the request and forwards traffic to the Flask application  
3. The Flask application handles the request and communicates with Redis  
4. Redis stores and retrieves the visit count data  
5. Docker Compose keeps the services connected through a shared container network

---

## Building the Flask Application

The Flask application was created using Python and containerised using Docker.

Features included:

* Flask routing
* Redis integration
* Visit counter functionality
* HTML template rendering
* Docker container support

<p align="center">
  <img width="1000" alt="Flask Application" src="https://github.com/huss-osman/nginx-flask-redis-app/blob/main/app/static/images/Flask_Application_Code.png" />
</p>

---

## Configuring Redis

Redis was configured as the application's key-value store.

The Flask application communicates with Redis internally through the Docker network.

Configuration included:

* Redis service container
* Internal service discovery
* Visit counter storage
* Persistent data handling

<p align="center">
  <img width="550" alt="Redis Configuration" src="https://github.com/huss-osman/nginx-flask-redis-app/blob/main/app/static/images/Redis_Configuration.png" />
</p>

---

## Adding Persistent Storage

Docker volumes were configured to ensure Redis data persisted across container restarts.

```yaml
volumes:
  redis-data:
```

This ensured:

* Redis data remained available
* Containers could restart safely
* Visit counts persisted after shutdowns

<p align="center">
  <img width="550" alt="Redis Volumes" src="https://github.com/huss-osman/nginx-flask-redis-app/blob/main/app/static/images/Redis_Persistence_strg.png" />
</p>

> [!IMPORTANT]
> Without Docker volumes, Redis data would be lost whenever the container was removed.

---

## Using Environment Variables

Environment variables were used to avoid hardcoding Redis connection details inside the Flask application.

Example:

```python
redis_host = os.getenv('REDIS_HOST', 'redis')
redis_port = int(os.getenv('REDIS_PORT', 6379))
```

This improved:

* Flexibility
* Portability
* Configuration management
* Production-readiness

<p align="center">
  <img width="1000" alt="Environment Variables" src="https://github.com/huss-osman/nginx-flask-redis-app/blob/main/app/static/images/Environment_Variables.png" />
</p>

---

## Configuring NGINX as a Reverse Proxy

NGINX was configured to act as a reverse proxy and load balancer.

Responsibilities included:

* Receiving incoming traffic
* Forwarding requests to Flask containers
* Distributing traffic across multiple instances
* Providing a single public entry point

<p align="center">
  <img width="550" alt="NGINX Reverse Proxy" src="https://github.com/huss-osman/nginx-flask-redis-app/blob/main/app/static/images/NGINX_Load_Balancing.png" />
</p>

---

## Scaling the Flask Application

Docker Compose scaling was used to create multiple Flask container instances.

Example:

```bash
docker compose up --scale web=3
```

NGINX distributed traffic across all Flask containers automatically.

This simulated:

* Horizontal scaling
* High availability
* Load balancing
* Production-style deployments

---

## Final Result

After configuration and troubleshooting, the Flask application became fully accessible through the NGINX reverse proxy.

Features successfully implemented:

* Docker containerisation
* Redis persistent storage
* NGINX reverse proxying
* Multi-container networking
* Environment variable configuration
* Container scaling

<p align="center">
<img width="1920" alt="NGINX_Flask_Redis_Demo" src="https://github.com/user-attachments/assets/52f25479-7f78-4163-9140-7ba2771c42e9" />
</p>

---

## Getting Started

#### Prerequisites: Docker and Docker Compose installed on your machine.

#### 1. Clone the Repository

```bash
git clone https://github.com/huss-osman/nginx-flask-redis-app.git
cd nginx-flask-redis-app
```

#### 2. Build and Start the Containers

```bash
docker compose up --build
```

#### 3. Access the Application

Open your browser and visit:

```bash
http://localhost:5004
```

Available routes:

* `/` → Main landing page
* `/count` → Redis visit counter
* `/about` → Project overview

#### 4. Stop the Application

```bash
docker compose down
```

---

## Troubleshooting

Some issues encountered during deployment included:

* Port conflicts during container scaling
* Incorrect Docker Compose indentation
* Redis connection failures
* Missing environment variables
* Volume configuration issues
* NGINX reverse proxy misconfiguration
* Flask container startup failures

---

## Why I Built It

I wanted hands-on experience with:

* Containerising modern applications using Docker
* Managing multi-container environments
* Understanding reverse proxies and load balancing
* Working with Redis persistent storage
* Using Docker Compose in real-world workflows
* Scaling applications across multiple containers
* Troubleshooting networking and service communication issues

---

## Key Takeaways

* Learned how Docker Compose manages multi-container applications
* Understood reverse proxying with NGINX
* Gained experience using Redis with Flask
* Practiced Docker networking and service communication
* Learned how Docker volumes provide persistent storage
* Understood container scaling and load balancing concepts
* Improved troubleshooting across container environments

