# DevOps Learning

![Focus](https://img.shields.io/badge/Focus-DevOps%20Foundations-purple)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)
![OS](https://img.shields.io/badge/OS-Linux-blue?logo=linux)
![Script](https://img.shields.io/badge/Script-Bash-blue?logo=gnubash)
![VCS](https://img.shields.io/badge/VCS-Git-F05032?logo=git&logoColor=white)
![Networking](https://img.shields.io/badge/Networking-Computer%20Networks-607D8B?logo=cloudflare&logoColor=white)
![Containers](https://img.shields.io/badge/Containers-Docker-2496ED?logo=docker&logoColor=white)
![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![IaC](https://img.shields.io/badge/IaC-Terraform-7B42BC?logo=terraform&logoColor=white)
![CI/CD](https://img.shields.io/badge/CI%2FCD-Automation-2088FF?logo=githubactions&logoColor=white)
![Orchestration](https://img.shields.io/badge/Orchestration-Kubernetes-326CE5?logo=kubernetes&logoColor=white)

This repository documents my hands-on learning across core **DevOps**, **cloud**, and **infrastructure** technologies through structured practical modules and real-world exercises.

The repository focuses on technologies commonly used in modern DevOps environments, including:

- **[Linux](./01-linux)**
- **[Bash](./02-bash)**
- **[Git](./03-git)**
- **[Networking](./04-networking)**
- **[Docker](./05-docker)**
- **[AWS](./06-aws)**
- **[Terraform](./07-terraform)**
- **[CI/CD](./08-cicd)**
- **[Kubernetes](./09-kubernetes)**

Each section documents practical exercises, real-world challenges, scripts, troubleshooting scenarios, and key lessons learned.

The goal is not just to memorise tools, but to understand how systems behave, automate reliably, and think operationally in production-style environments.

<img width="1000" height="500" alt="imageedit_7_8304587864" src="https://github.com/user-attachments/assets/0b5652f0-87d2-412e-b769-5b29f46e2af2" />

---

## 📁 Featured Folders

<h3>
  <img src="https://github.com/user-attachments/assets/a4d88cc6-7a7f-4035-9b82-5d0354d8e0bb" width="28" align="center">
  <a href="https://github.com/huss-osman/devops-learning/tree/main/01-linux">Linux</a>
</h3>

Core Linux fundamentals and hands-on operational practice.

Covers:
- Terminal basics and filesystem navigation
- Permissions, users, and groups
- Process management
- Environment variables
- Text processing (`grep`, `awk`, `sed`)
- Pipes and redirection
- Practical labs including [Bandit](./01-linux/labs/bandit), and [SadServers](./01-linux/labs/sadservers)

---

<h3>
  <img src="https://github.com/user-attachments/assets/dabfb244-0d00-405a-9eb0-b9262fd1e2b7" width="28" align="center">
  <a href="https://github.com/huss-osman/devops-learning/tree/main/02-bash">Bash Scripting</a>
</h3>

Foundational scripting concepts and hands-on automation practice.

Covers:
- Script structure and execution
- Variables and parameters
- Conditionals and loops
- Functions
- Input handling
- File operations
- Piping and redirection
- Safe scripting practices (`set -e`, `set -u`, etc.)
- Real-world scripting challenges including [Bash Practice](./02-bash/labs/bash-practice), [Bash Battle Arena](./02-bash/labs/bashbattlearena), and [Assignments](./02-bash/assignments)
  
---

<h3>
  <img src="https://github.com/user-attachments/assets/ebaac862-de30-40ee-9466-25622db90c1d" width="28" align="center">
  <a href="https://github.com/huss-osman/devops-learning/tree/main/03-git">Git</a>
</h3>

Core Git fundamentals and hands-on collaboration practice.

Covers:
- Git architecture and how Git stores snapshots
- Repository structure and the `.git` directory
- The three areas (working directory, staging, repository)
- Viewing and understanding history (`git log`, `git diff`, `git show`)
- Branching and merging workflows
- Conflict resolution
- Rebase vs merge strategies
- Undoing changes (`reset`, `revert`, `restore`)
- Working with remotes and GitHub
- Real-world workflows including [Labs](./03-git/labs) and [Best Practices](./03-git/best-practices)

---

<h3>
  <img src="https://github.com/user-attachments/assets/224184e0-5eb6-44e4-b601-ec20332b6f8d" width="28" align="center">
  <a href="https://github.com/huss-osman/devops-learning/tree/main/04-networking">Networking</a>
</h3>

Core networking fundamentals and hands-on troubleshooting practice.

Covers:
- How systems communicate over networks
- OSI and TCP/IP models
- IP addressing and MAC addressing
- Ports and protocols (TCP, UDP, HTTP, DNS)
- DNS resolution and records
- Routing and traffic flow
- Subnetting and CIDR
- Network debugging tools (`ping`, `traceroute`, `nslookup`, `dig`)
- Practical troubleshooting labs and real-world scenarios in [Labs](./04-networking/labs) and [Assignments](./04-networking/assignments)

---

<h3>
  <img src="https://github.com/user-attachments/assets/2fc49307-4efa-4fef-8663-96b3f8f9ff30" width="34" align="center">
  <a href="https://github.com/huss-osman/devops-learning/tree/main/05-docker">Docker</a>
</h3>

Core Docker fundamentals and hands-on containerisation practice.

Covers:
- Containers and Docker architecture
- Docker images and containers
- Dockerfiles and image builds
- Docker networking and communication
- Docker Compose workflows
- Multi-container applications
- DockerHub and Amazon ECR
- Docker debugging tools (`docker ps`, `docker logs`, `docker exec`, `docker inspect`)
- Multi-stage builds and orchestration concepts
- Practical containerisation projects and real-world scenarios in [Labs](./05-docker/labs) and [Assignments](./05-docker/assignments)
      
---

<h3>
  <img src="AWS_ICON_URL" width="28" align="center">
  <a href="https://github.com/huss-osman/devops-learning/tree/main/06-aws">AWS</a>
</h3>

Core AWS fundamentals and hands-on cloud infrastructure practice.

Covers:
- AWS global infrastructure, Regions, and Availability Zones
- `IAM` users, groups, policies, roles, MFA, and access control
- `EC2` instances, `AMIs`, User Data, and instance types
- Security Groups, public/private IPs, Elastic IPs, and `VPC` networking
- Subnets, route tables, Internet Gateways, NAT Gateways, `NACLs`, and `VPC Endpoints`
- `EBS`, `AMIs`, and `EFS` storage concepts
- Load balancing, health checks, `SSL/TLS`, and Auto Scaling Groups
- Containers on AWS using `ECS`, `ECR`, and `EKS`
- Serverless concepts using `AWS Lambda`
- DNS and routing with `Route 53`
- CDN concepts using `CloudFront`
- Practical cloud infrastructure projects in [Assignments](./06-aws/assignments)

---

## 🎯 Learning Focus

This repository is designed to:

- Build strong command-line fundamentals
- Understand how Linux systems actually behave
- Develop safe and predictable Bash scripts
- Practice troubleshooting through real scenarios
- Document learning in a clear, structured way

The emphasis is on **understanding system behaviour**, not memorising commands.

---

## 🚧 Status

**Work in progress** — continuously updated as I progress through:

- AWS
- Terraform
- CI/CD
- Kubernetes
