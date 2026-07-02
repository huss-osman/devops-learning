# ECS Service Auto Scaling

## Overview

This section introduces **ECS Service Auto Scaling**, which automatically adjusts the number of running ECS tasks based on application demand and resource utilisation.

Rather than manually increasing or decreasing container capacity, ECS can respond dynamically to changing workloads by launching additional tasks during busy periods and removing unnecessary tasks during quieter periods.

## Contents

* [What is ECS Service Auto Scaling?](#what-is-ecs-service-auto-scaling)
* [Scaling Metrics](#scaling-metrics)
* [Target Tracking Scaling](#target-tracking-scaling)
* [Step Scaling](#step-scaling)
* [Scheduled Scaling](#scheduled-scaling)
* [Fargate and Auto Scaling](#fargate-and-auto-scaling)

---

## What is ECS Service Auto Scaling?

ECS Service Auto Scaling automatically adjusts the number of ECS Tasks running within a service based on demand.

When application traffic increases:

* Additional ECS Tasks are launched.

When traffic decreases:

* Unused ECS Tasks are terminated.

This allows applications to automatically adapt to workload changes without requiring manual intervention.

---

## Scaling Metrics

ECS uses **AWS Application Auto Scaling** alongside **Amazon CloudWatch** metrics to determine when scaling actions should occur.

Common scaling metrics include:

* CPU Utilisation
* Memory Utilisation
* Application Load Balancer Request Count Per Target
* Custom CloudWatch Metrics

These metrics provide real-time visibility into application demand and resource consumption.

---

## Target Tracking Scaling

Target Tracking is the simplest and most commonly used scaling policy.

A target value is defined and AWS automatically adjusts capacity to maintain that value.

Example:

```text
Maintain average CPU utilisation at 40%
```

If CPU usage rises above the target:

* Additional tasks are launched.

If CPU usage falls below the target:

* Tasks are removed.

Target Tracking provides a highly automated and responsive scaling strategy.

---

## Step Scaling

Step Scaling provides greater control over scaling decisions.

Scaling actions occur when predefined thresholds are crossed.

Examples:

```text
CPU > 70% → Add 2 Tasks
CPU < 30% → Remove 1 Task
```

This approach allows scaling behaviour to be customised for specific workloads and traffic patterns.

---

## Scheduled Scaling

Scheduled Scaling allows capacity changes to occur at predefined times.

This is useful when traffic patterns are predictable.

Examples include:

* Weekly traffic spikes
* Marketing campaigns
* Business opening hours
* Seasonal events
* Product launches

By scaling ahead of expected demand, applications can remain responsive during peak periods.

---

## Fargate and Auto Scaling

When using **AWS Fargate**, scaling becomes even simpler because there are no EC2 instances to manage.

AWS automatically provisions the required infrastructure behind the scenes while ECS manages the number of running tasks.

This allows teams to focus entirely on applications rather than infrastructure management.

In Fargate environments:

```text
Scale Tasks → AWS Handles Infrastructure
```

---

## Key Takeaways

* ECS Service Auto Scaling automatically adjusts task capacity based on demand
* ECS uses AWS Application Auto Scaling for scaling decisions
* CloudWatch metrics drive scaling events
* CPU utilisation and memory utilisation are common scaling metrics
* ALB request count can be used as a scaling metric
* Target Tracking is the simplest scaling strategy
* Step Scaling provides more granular control
* Scheduled Scaling supports predictable traffic patterns
* Fargate simplifies scaling by removing infrastructure management
* ECS Auto Scaling improves availability, performance, and cost efficiency

---

## Reflection

Learning about ECS Service Auto Scaling helped me understand how containerised applications can automatically adapt to changing workloads without requiring manual intervention.

I also learned how CloudWatch metrics, scaling policies, and AWS Application Auto Scaling work together to ensure ECS services remain responsive during traffic spikes while reducing costs during quieter periods.
