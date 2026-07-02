# Amazon ECS

## Overview

This section introduces **Amazon Elastic Container Service (Amazon ECS)**, AWS's fully managed container orchestration service used to deploy, manage, and scale containerised applications.

Amazon ECS removes much of the operational complexity associated with running containers by handling scheduling, orchestration, health monitoring, and scaling while integrating closely with other AWS services.

One of the key decisions when using ECS is choosing the appropriate **launch type**, which determines who is responsible for managing the underlying infrastructure that runs the containers.

## Contents

* [What is Amazon ECS?](#what-is-amazon-ecs)
* [ECS Clusters](#ecs-clusters)
* [EC2 Launch Type](#ec2-launch-type)
* [Fargate Launch Type](#fargate-launch-type)
* [Task Definitions](#task-definitions)
* [Choosing a Launch Type](#choosing-a-launch-type)

---

## What is Amazon ECS?

Amazon ECS is a managed container orchestration platform used to run Docker containers on AWS.

ECS is responsible for:

* Container scheduling
* Container deployment
* Health monitoring
* Service discovery
* Scaling workloads

Rather than manually managing containers across multiple servers, ECS automates much of the operational overhead involved in running containerised applications.

---

## ECS Clusters

Containers in ECS run inside an **ECS Cluster**.

An ECS Cluster acts as a logical grouping of compute resources where containers are deployed and managed.

When creating a cluster, one of the first decisions is selecting a launch type.

The launch type determines how the underlying infrastructure is provided and managed.

---

## EC2 Launch Type

With the **EC2 Launch Type**, customers manage the underlying EC2 infrastructure themselves.

This means you are responsible for:

* Provisioning EC2 instances
* Managing operating systems
* Applying updates and patches
* Capacity planning
* Scaling infrastructure

Each EC2 instance must run the **ECS Agent**, which registers the instance with the ECS Cluster and allows ECS to communicate with it.

Once registered, ECS handles:

* Scheduling containers
* Starting tasks
* Stopping tasks
* Monitoring container health

The EC2 launch type provides greater flexibility and control over the underlying infrastructure.

Common use cases include:

* Custom operating system requirements
* Security compliance requirements
* Specialised hardware needs
* GPU workloads
* Custom networking configurations

---

## Fargate Launch Type

With the **Fargate Launch Type**, AWS manages the underlying infrastructure on your behalf.

There are:

* No EC2 instances to manage
* No operating systems to patch
* No infrastructure to scale manually

Instead, users simply define:

* CPU requirements
* Memory requirements
* Networking configuration

AWS then provisions and manages the compute resources automatically.

Because of this, Fargate is commonly referred to as **serverless containers**.

Scaling is achieved by increasing or decreasing the number of running tasks rather than managing additional servers.

Fargate is ideal for teams that want to focus entirely on applications rather than infrastructure management.

---

## Task Definitions

Containers in ECS are deployed using **Task Definitions**.

A Task Definition acts as a blueprint describing how containers should run.

Task Definitions contain settings such as:

* Container images
* CPU allocation
* Memory allocation
* Port mappings
* Environment variables
* Networking configuration
* Logging configuration

ECS uses these definitions to create running tasks inside the cluster.

---

## Choosing a Launch Type

| Feature | EC2 Launch Type | Fargate Launch Type |
|----------|----------------|---------------------|
| Infrastructure Management | Customer Managed | AWS Managed |
| Server Maintenance | Required | Not Required |
| Flexibility | High | Moderate |
| Operational Overhead | Higher | Lower |
| Scaling Infrastructure | Customer Responsibility | AWS Responsibility |

In simple terms:

```text
EC2 Launch Type → More Control
Fargate Launch Type → Less Management
```

---

## Key Takeaways

* Amazon ECS is AWS's managed container orchestration service
* ECS clusters act as logical groups for running containers
* ECS supports both EC2 and Fargate launch types
* EC2 launch type provides greater infrastructure control
* Fargate removes the need to manage servers
* ECS Agents register EC2 instances with ECS clusters
* Task Definitions define how containers should run
* ECS automates container scheduling and management
* Fargate is commonly referred to as serverless containers
* ECS integrates closely with other AWS services

---

## Reflection

Learning about Amazon ECS helped me understand the difference between managing container infrastructure yourself and allowing AWS to manage it for you.

I also learned how ECS clusters, task definitions, and launch types work together to simplify container orchestration while providing flexibility for different operational requirements and workloads.
