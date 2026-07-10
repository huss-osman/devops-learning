# Amazon EKS

<p align="center">
  <img width="1000" alt="EKS Diagram Example" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS_EKS_Diagram_Example.png" />
</p>

This section introduces **Amazon Elastic Kubernetes Service (Amazon EKS)**, AWS's managed Kubernetes platform used to deploy, manage, and scale containerised applications using Kubernetes.

Amazon EKS removes much of the operational complexity associated with running Kubernetes by managing the Kubernetes control plane while allowing teams to focus on deploying and operating applications.

## Contents

* [What is Amazon EKS?](#what-is-amazon-eks)
* [EKS vs ECS](#eks-vs-ecs)
* [Launch Types](#launch-types)
* [EKS Architecture](#eks-architecture)
* [Node Types](#node-types)
* [Monitoring and Observability](#monitoring-and-observability)

---

## What is Amazon EKS?

Amazon EKS is AWS's managed Kubernetes service.

It allows organisations to run Kubernetes workloads on AWS without having to manage the Kubernetes control plane themselves.

AWS manages:

* Kubernetes control plane updates
* High availability of the control plane
* Security patching
* Control plane scaling
* API server management

Meanwhile customers focus on:

* Applications
* Containers
* Deployments
* Services
* Worker Nodes

---

## EKS vs ECS

Although both ECS and EKS are container orchestration platforms, they target slightly different use cases.

| Feature | ECS | EKS |
|----------|-----|-----|
| Orchestration Platform | AWS Native | Kubernetes |
| Cloud Portability | Low | High |
| Complexity | Lower | Higher |
| Vendor Lock-in | Higher | Lower |
| Learning Curve | Easier | Steeper |

ECS is tightly integrated into AWS and provides a simpler operational model.

EKS uses Kubernetes which allows workloads to move more easily between:

* AWS
* Google Cloud
* Microsoft Azure
* On-premises environments

---

## Launch Types

Amazon EKS supports multiple deployment models.

### EC2 Worker Nodes

With EC2 Worker Nodes:

* You manage the EC2 infrastructure.
* Kubernetes workloads run on worker nodes.
* EKS manages the Kubernetes control plane.

This provides greater flexibility and customisation.

---

### AWS Fargate

With AWS Fargate:

* No EC2 instances are managed by customers.
* AWS manages all infrastructure.
* Containers run in a serverless model.

This reduces operational overhead significantly.

---

## EKS Architecture

A typical EKS architecture contains several core components.

### VPC

All EKS resources run inside an Amazon VPC.

The VPC provides:

* Network isolation
* Security boundaries
* Internal communication

---

### Availability Zones

Production EKS clusters are typically deployed across multiple Availability Zones.

Benefits include:

* High Availability
* Fault Tolerance
* Resilience against AZ failures

---

### Private Subnets

Worker Nodes are commonly deployed into private subnets.

This prevents direct exposure to the internet while improving security.

---

### Elastic Load Balancers

Elastic Load Balancers distribute incoming traffic across Kubernetes workloads.

Benefits include:

* Traffic distribution
* High Availability
* Automatic failover

---

### NAT Gateways

NAT Gateways allow worker nodes in private subnets to access the internet for:

* Pulling container images
* Installing updates
* Downloading dependencies

while remaining inaccessible from the public internet.

---

### Auto Scaling Groups

Worker Nodes are commonly deployed inside Auto Scaling Groups.

This allows clusters to automatically increase or decrease capacity based on workload demand.

---

### Pods

Pods are the smallest deployable unit within Kubernetes.

Pods contain one or more containers that run applications and services.

---

## Node Types

Amazon EKS supports several node management options.

### Managed Node Groups

AWS provisions and manages worker nodes on your behalf.

Benefits include:

* Reduced operational overhead
* Automatic updates
* Integration with Auto Scaling Groups

Managed Node Groups support:

* On-Demand Instances
* Spot Instances

---

### Self-Managed Nodes

Customers provision and manage worker nodes themselves.

Benefits include:

* Greater control
* Custom AMIs
* Custom configurations

This option provides flexibility at the cost of additional management responsibilities.

---

### AWS Fargate

AWS Fargate removes the need for worker nodes entirely.

Benefits include:

* No infrastructure management
* No EC2 administration
* Serverless Kubernetes workloads

Fargate is generally the simplest operational model.

---

## Monitoring and Observability

Amazon EKS integrates with Amazon CloudWatch Container Insights.

This provides visibility into:

* Logs
* Metrics
* Container performance
* Cluster health
* Resource utilisation

These insights help improve troubleshooting and operational visibility.

---

## Key Takeaways

* Amazon EKS is AWS's managed Kubernetes service.
* AWS manages the Kubernetes control plane.
* EKS provides Kubernetes portability across cloud providers.
* EKS supports both EC2 and Fargate launch models.
* Worker Nodes commonly run inside private subnets.
* EKS architectures are typically spread across multiple Availability Zones.
* Elastic Load Balancers distribute traffic to workloads.
* NAT Gateways provide secure outbound internet access.
* Pods are the smallest deployable unit in Kubernetes.
* EKS supports Managed Nodes, Self-Managed Nodes, and Fargate.
* CloudWatch Container Insights provides monitoring and observability.

---

## Reflection

Learning about Amazon EKS helped me understand how AWS simplifies Kubernetes operations by managing the control plane while still providing the flexibility and portability that Kubernetes offers.

I also learned how worker nodes, pods, load balancers, private networking, and auto scaling work together to create highly available, scalable, and production-ready Kubernetes environments on AWS.
