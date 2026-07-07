# Serverless Overview

## Overview

This section introduces **serverless computing**, a cloud computing model where developers focus on writing and deploying application code while the cloud provider manages the underlying infrastructure.

Rather than provisioning, maintaining, or scaling servers manually, serverless services automatically handle infrastructure management, scaling, availability, and resource allocation.

## Contents

* [What is Serverless?](#what-is-serverless)
* [Function as a Service (FaaS)](#function-as-a-service-faas)
* [Beyond Functions](#eyond-functions)
* [AWS Serverless Services](#aws-serverless-services)
* [Benefits of Serverless](#benefits-of-serverless)

---

## What is Serverless?

Serverless is a cloud computing model where developers deploy application code without managing servers.

Instead of provisioning virtual machines or maintaining infrastructure, the cloud provider automatically handles:

* Server provisioning
* Infrastructure management
* Scaling
* Availability
* Maintenance
* Patching

Developers simply write and deploy code while AWS manages everything else behind the scenes.

> [!NOTE]
> Serverless does **not** mean there are no servers. Servers still exist, but AWS manages them on your behalf.

---

## Function as a Service (FaaS)

One of the most common serverless models is **Function as a Service (FaaS)**.

With FaaS:

* Applications are broken into individual functions.
* Functions execute only when triggered by an event.
* Resources are allocated automatically.
* Billing occurs only while functions are running.

On AWS, this is provided through **AWS Lambda**.

Examples of event triggers include:

* API requests
* File uploads
* Database changes
* Scheduled events
* Queue messages

---

## Beyond Functions

Serverless extends beyond compute services.

Many AWS managed services are also considered serverless because AWS operates the underlying infrastructure.

Examples include:

* Amazon S3
* Amazon DynamoDB
* Amazon SQS
* Amazon SNS
* Amazon EventBridge

These services allow developers to build complete applications without managing servers directly.

---

## AWS Serverless Services

AWS provides a wide range of fully managed serverless services that allow developers to build scalable applications without managing infrastructure.

Some of the most commonly used services include:

| Service | Purpose |
|---------|---------|
| AWS Lambda | Run application code in response to events |
| Amazon API Gateway | Create and manage APIs that invoke backend services |
| Amazon DynamoDB | Fully managed NoSQL database |
| Amazon S3 | Object storage for files and static content |
| Amazon Cognito | User authentication and identity management |
| Amazon SNS | Publish notifications to subscribers |
| Amazon SQS | Queue messages between distributed services |
| AWS Step Functions | Orchestrate workflows across multiple services |
| AWS Fargate | Run containers without managing EC2 instances |
| Amazon Kinesis Data Firehose | Stream data into AWS storage and analytics services |
| Amazon Aurora Serverless | Automatically scaling relational database |

These services can be combined to build complete event-driven applications.

A common architecture might look like:

```text
User
   │
   ▼
Amazon Cognito
   │
   ▼
Amazon API Gateway
   │
   ▼
AWS Lambda
   │
   ├────────► Amazon DynamoDB
   │
   ├────────► Amazon S3
   │
   ├────────► Amazon SQS / SNS
   │
   └────────► AWS Step Functions
```

Because AWS manages the underlying infrastructure for each service, developers can focus on application logic while benefiting from automatic scaling, high availability, and reduced operational overhead.

---

## Benefits of Serverless

Serverless provides several advantages for modern cloud applications.

Benefits include:

* No server management
* Automatic scaling
* Reduced operational overhead
* High availability
* Faster development
* Event-driven execution
* Pay-per-use pricing

This allows development teams to spend more time building applications rather than maintaining infrastructure.

---

## Key Takeaways

* Serverless abstracts infrastructure management from developers
* AWS manages the underlying servers automatically
* Developers focus primarily on application code
* Function as a Service (FaaS) is a core serverless model
* AWS Lambda is AWS's serverless compute service
* Serverless applications commonly use event-driven architectures
* AWS provides many serverless services including Lambda, API Gateway, DynamoDB, S3, Cognito, SNS, SQS, Step Functions, Fargate, and Aurora Serverless
* Serverless services automatically scale based on demand
* Billing is typically based on actual usage
* Serverless reduces operational complexity and infrastructure management

---

## Reflection

Learning about serverless computing helped me understand how modern cloud applications can be built and scaled without manually provisioning, maintaining, or managing servers, allowing developers to focus on writing application code rather than managing infrastructure.

I also learned that serverless extends beyond compute services such as AWS Lambda to include fully managed services like Amazon S3, DynamoDB, and SQS, allowing developers to focus on building applications while AWS manages the underlying infrastructure.
