# AMI Overview

## Overview

This section introduces **Amazon Machine Images (AMIs)**, which act as templates for launching EC2 instances in AWS. AMIs contain everything required to create an instance, including the operating system, software, configurations, and additional dependencies.

Understanding AMIs is important because they allow organisations to standardise deployments, reduce manual configuration, and ensure consistency across environments and regions.

## Contents

* [What is an AMI?](#what-is-an-ami)
* [What Does an AMI Contain?](#what-does-an-ami-contain)
* [Types of AMIs](#types-of-amis)
* [Benefits of AMIs](#benefits-of-amis)
* [Regional Availability](#regional-availability)

---

## What is an AMI?

An **Amazon Machine Image (AMI)** is a blueprint used to launch EC2 instances.

Rather than configuring every server manually, an AMI provides a predefined template containing everything required to boot and run an instance.

You can think of an AMI as:

* A server template
* A pre-configured operating system image
* A reusable EC2 deployment blueprint

> [!NOTE]
> Every EC2 instance launches from an AMI.

---

## What Does an AMI Contain?

An AMI typically includes:

* Operating system
* Installed software
* Configuration files
* Monitoring agents
* Security settings
* Application dependencies

Because all of these components are pre-configured, instances launched from the same AMI remain consistent across environments.

---

## Types of AMIs

### Public AMIs

Public AMIs are provided by AWS and are available for all AWS customers.

Examples include:

* Amazon Linux
* Ubuntu
* Windows Server
* Red Hat Enterprise Linux

---

### Custom AMIs

Custom AMIs are created from EC2 instances that have already been configured.

This allows organisations to:

* Standardise deployments
* Reuse server configurations
* Launch identical environments quickly

Custom AMIs are commonly used within production environments.

---

### Marketplace AMIs

Marketplace AMIs are provided by third-party vendors through the AWS Marketplace.

Examples include:

* Security appliances
* Monitoring platforms
* Databases
* Enterprise software

Some Marketplace AMIs are free, while others require additional licensing costs.

---

## Benefits of AMIs

AMIs provide several advantages:

* Faster instance deployment
* Consistent server configurations
* Reduced manual configuration
* Simplified scaling
* Reduced human error

Because instances launch from the same template, infrastructure becomes easier to manage and automate.

This is especially important in:

* Auto Scaling Groups
* Production environments
* Disaster recovery environments
* Multi-region deployments

---

## Regional Availability

AMIs are regional resources.

This means:

* An AMI exists within a specific AWS Region
* AMIs can be copied between regions
* Regional copies can be used to launch identical infrastructure globally

This makes AMIs useful for disaster recovery and multi-region architectures.

---

## Key Takeaways

* AMIs act as templates for launching EC2 instances
* Every EC2 instance launches from an AMI
* AMIs contain operating systems, software, and configuration settings
* Public AMIs are provided by AWS
* Custom AMIs allow organisations to standardise deployments
* Marketplace AMIs provide pre-configured third-party software
* AMIs reduce setup time and configuration drift
* AMIs support consistency across environments
* AMIs are regional resources but can be copied between regions

---

## Reflection

Learning about AMIs helped me understand how AWS standardises server deployments and simplifies infrastructure management.

I also learned how AMIs reduce manual configuration, improve consistency across environments, and support automation and scaling within modern cloud architectures.
