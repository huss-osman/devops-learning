# Auto Scaling Groups

## Overview

This section introduces **Auto Scaling Groups (ASGs)**, an AWS service that automatically adjusts the number of EC2 instances running based on application demand.

Auto Scaling helps applications remain responsive during periods of high traffic while reducing infrastructure costs during quieter periods by automatically adding or removing resources as required.

Auto Scaling Groups are a fundamental component of modern cloud architectures because they provide **scalability**, **high availability**, **fault tolerance**, and **cost optimisation** without requiring manual intervention.

## Contents

* [What is an Auto Scaling Group?](#what-is-an-auto-scaling-group)
* [Scaling In and Scaling Out](#scaling-in-and-scaling-out)
* [Minimum, Desired and Maximum Capacity](#minimum-desired-and-maximum-capacity)
* [Auto Scaling and Load Balancers](#auto-scaling-and-load-balancers)
* [Launch Templates](#launch-templates)
* [CloudWatch Alarms and Scaling](#cloudwatch-alarms-and-scaling)
* [Scaling Policies](#scaling-policies)

---

## What is an Auto Scaling Group?

An **Auto Scaling Group (ASG)** automatically manages the number of EC2 instances running for an application.

The primary goal of an ASG is to maintain application performance while minimising infrastructure costs.

When demand increases:

* New EC2 instances are launched automatically.

When demand decreases:

* Unused instances are terminated automatically.

This ensures that applications always have the right amount of compute capacity available.

---

## Scaling In and Scaling Out

Auto Scaling Groups adjust capacity using two operations:

### Scale Out

Scale out occurs when additional EC2 instances are launched to handle increased demand.

Examples include:

* Increased website traffic
* Sales events
* Seasonal demand spikes

---

### Scale In

Scale in occurs when EC2 instances are terminated because demand has reduced.

Examples include:

* Overnight traffic reductions
* End of promotional events
* Lower application utilisation

This helps reduce unnecessary infrastructure costs.

---

## Minimum, Desired and Maximum Capacity

Every Auto Scaling Group operates using three important values:

### Minimum Capacity

The minimum number of instances that must always remain running.

---

### Desired Capacity

The target number of instances the ASG attempts to maintain during normal operation.

---

### Maximum Capacity

The maximum number of instances the ASG is allowed to launch during periods of high demand.

Example:

```text
Minimum Capacity: 2
Desired Capacity: 4
Maximum Capacity: 10
```

---

## Auto Scaling and Load Balancers

Auto Scaling Groups are commonly integrated with Load Balancers such as an ALB.

Users send requests to the Load Balancer, which distributes traffic across healthy EC2 instances.

When the ASG launches new instances:

* They are automatically registered with the Load Balancer.

When instances become unhealthy:

* The Load Balancer stops sending traffic.
* The ASG automatically replaces failed instances.

This combination provides:

* Scalability
* High Availability
* Fault Tolerance

---

## Launch Templates

Modern Auto Scaling Groups use **Launch Templates** to define instance configuration.

Launch Templates contain settings such as:

* Amazon Machine Image (AMI)
* Instance Type
* EC2 User Data
* EBS Volumes
* Security Groups
* SSH Key Pairs
* IAM Roles
* Network Configuration
* Subnets
* Load Balancer Configuration

This ensures all newly created instances are deployed consistently.

---

## CloudWatch Alarms and Scaling

Auto Scaling decisions are commonly driven by **Amazon CloudWatch** metrics and alarms.

CloudWatch monitors metrics such as:

* CPU Utilisation
* Network Traffic
* Memory Usage
* Custom Application Metrics

When thresholds are reached:

* Scale-out actions can launch additional instances.
* Scale-in actions can remove unused instances.

This allows infrastructure to react automatically to changing demand.

---

## Scaling Policies

Scaling policies define how an Auto Scaling Group responds to changes in workload.

### Target Tracking Scaling

AWS automatically adjusts capacity to maintain a target metric.

Example:

```text
Maintain average CPU utilisation at 40%
```

---

### Step Scaling

Scaling actions occur when CloudWatch alarms cross predefined thresholds.

Example:

```text
CPU > 70% → Add 2 Instances
CPU < 30% → Remove 1 Instance
```

---

### Scheduled Scaling

Scaling occurs at predefined times.

Examples include:

* Weekly traffic spikes
* Marketing campaigns
* Seasonal sales events

This is useful when traffic patterns are predictable.

---

## Key Takeaways

* Auto Scaling Groups automatically manage EC2 capacity
* ASGs scale out during periods of high demand
* ASGs scale in during periods of low demand
* Minimum capacity defines the lowest number of instances
* Desired capacity defines the normal operating level
* Maximum capacity limits scaling growth
* ASGs integrate closely with Load Balancers
* Unhealthy instances are replaced automatically
* Launch Templates provide consistent instance configuration
* CloudWatch metrics drive scaling decisions
* Target Tracking, Step Scaling, and Scheduled Scaling are common scaling policies
* Auto Scaling improves scalability, availability, and cost efficiency

---

## Reflection

Learning about Auto Scaling Groups helped me understand how cloud infrastructure can automatically adapt to changing workloads without manual intervention.

I also learned how Auto Scaling works alongside Load Balancers, Launch Templates, and CloudWatch to create highly available, scalable, and cost-efficient architectures that can respond dynamically to application demand.
