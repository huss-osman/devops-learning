# Serverless Overview

## Overview

This section introduces **serverless computing**, a cloud computing model where developers focus on writing and deploying application code while the cloud provider manages the underlying infrastructure.

Rather than provisioning, maintaining, or scaling servers manually, serverless services automatically handle infrastructure management, scaling, availability, and resource allocation.

Serverless computing enables faster application development, reduced operational overhead, and a pay-for-use pricing model.

## Contents

* [What is Serverless?](#what-is-serverless)
* [Function as a Service (FaaS)](#function-as-a-service-faas)
* [Beyond Functions](#eyond-functions)
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
* Many AWS managed services are considered serverless
* Serverless provides automatic scaling and high availability
* Billing is typically based on actual usage
* Serverless reduces operational complexity and infrastructure management

---

## Reflection

Learning about serverless computing helped me understand how modern cloud applications can be built without managing servers directly.

I also learned that serverless extends beyond compute services such as AWS Lambda to include fully managed services like Amazon S3, DynamoDB, and SQS, allowing developers to focus on building applications while AWS manages the underlying infrastructure.
