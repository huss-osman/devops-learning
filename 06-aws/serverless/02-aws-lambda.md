# AWS Lambda

## Overview

This section introduces **AWS Lambda**, AWS's serverless compute service that allows developers to run code without provisioning or managing servers.

Unlike traditional virtual machines such as Amazon EC2, Lambda automatically manages infrastructure, scales in response to demand, and charges only for the compute time used.

## Contents

* [What is AWS Lambda?](#what-is-aws-lambda)
* [Lambda vs EC2](#lambda-vs-ec2)
* [Benefits of AWS Lambda](#benefits-of-aws-lambda)
* [Common Use Cases](#common-use-cases)

---

## What is AWS Lambda?

AWS Lambda is a **serverless compute service** that executes code in response to events.

Instead of managing virtual machines, developers simply upload their code, configure a trigger, and AWS automatically handles:

* Infrastructure provisioning
* Scaling
* Availability
* Server management

Lambda functions only run when invoked, making them ideal for event-driven applications.

> [!NOTE]
> Lambda functions have a maximum execution time of **15 minutes**, making them best suited for short-lived workloads rather than long-running processes.

---

## Lambda vs EC2

Although both services run applications, they operate very differently.

| Amazon EC2 | AWS Lambda |
|------------|------------|
| Manage virtual machines | No servers to manage |
| Choose CPU and memory for instances | Configure memory and Lambda allocates compute automatically |
| Pay while instances are running | Pay only when code executes |
| Instances can remain idle | No charges when functions are idle |
| Scaling requires manual configuration or Auto Scaling | Scales automatically based on demand |
| Suitable for long-running applications | Ideal for short, event-driven workloads |

---

## Benefits of AWS Lambda

AWS Lambda provides several advantages:

* No infrastructure management
* Automatic scaling
* Event-driven execution
* Pay-per-use pricing
* High availability
* Tight integration with AWS services

This allows developers to focus on application logic while AWS manages the underlying infrastructure.

---

## Common Use Cases

Lambda is commonly used for:

* API backends
* File processing
* Image resizing
* Scheduled tasks
* Data processing
* Event-driven automation
* Serverless web applications

Lambda integrates seamlessly with services such as Amazon S3, API Gateway, DynamoDB, EventBridge, SNS, and SQS.

---

## Key Takeaways

* AWS Lambda is AWS's serverless compute service
* Developers deploy code without managing servers
* Lambda executes code only when triggered
* Functions automatically scale based on demand
* Billing is based on actual execution time
* Lambda functions can run for up to 15 minutes
* Lambda integrates with many AWS services
* Lambda is ideal for event-driven and serverless applications
* EC2 provides greater infrastructure control, while Lambda removes operational overhead

---

## Reflection

Learning about AWS Lambda helped me understand how serverless computing removes the need to provision and manage infrastructure while still allowing applications to scale automatically.

I also learned how Lambda differs from EC2 by executing code only when needed, charging only for execution time, and making event-driven application development simpler and more cost-efficient.
