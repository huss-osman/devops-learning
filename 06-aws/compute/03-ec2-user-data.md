# EC2 User Data

## Overview

This section introduces **EC2 User Data**, a feature that allows scripts and commands to run automatically when an EC2 instance launches for the first time. User Data is commonly used to automate server configuration, software installation, updates, and other bootstrapping tasks.

Automating instance setup reduces manual effort, improves consistency across deployments, and supports Infrastructure as Code (IaC) and DevOps practices.

## Contents

* [What is EC2 User Data?](#what-is-ec2-user-data)
* [Common Use Cases](#common-use-cases)
* [User Data and Bootstrapping](#user-data-and-bootstrapping)
* [EC2 Launch Walkthrough](#ec2-launch-walkthrough)
* [Connecting via SSH](#connecting-via-ssh)

---

## What is EC2 User Data?

EC2 User Data is a script that runs automatically when an instance launches for the first time.

It is commonly used to:

* Install software
* Apply system updates
* Download files
* Configure applications
* Execute startup commands

This process is known as **bootstrapping** because the instance configures itself automatically during launch.

> [!NOTE]
> User Data scripts execute with root privileges, meaning they have full administrative access to the operating system.

---

## Common Use Cases

User Data can automate many setup tasks including:

* Installing NGINX
* Installing Apache
* Updating packages
* Downloading configuration files
* Deploying application code
* Creating users and directories
* Running startup scripts

Without User Data, these tasks would need to be performed manually after every instance launch.

---

## User Data and Bootstrapping

Bootstrapping allows an instance to become application-ready automatically.

For example, when an EC2 instance launches, a User Data script could:

1. Update the operating system
2. Install NGINX
3. Configure firewall rules
4. Download application files
5. Start required services

This significantly reduces deployment time and improves consistency across environments.

> [!IMPORTANT]
> In production environments, manually configuring every server does not scale. User Data helps automate deployments and reduce configuration drift.

---

## EC2 Launch Walkthrough

### Step 1: Navigate to EC2

From the AWS Console homepage, select **EC2** from the services list.

<p align="center">
  <img width="1200" alt="Navigate to EC2" src="../../images/AWS_EC2_Walkthrough(1).png" />
</p>

---

### Step 2: Open Instances

Within the EC2 dashboard, navigate to:

**Instances → Instances**

<p align="center">
  <img width="1200" alt="EC2 Instances Page" src="../../images/AWS_EC2_Walkthrough(2).png" />
</p>

---

### Step 3: Launch an Instance

Select **Launch Instances** to begin creating a new EC2 instance.

<p align="center">
  <img width="1200" alt="Launch EC2 Instance" src="../../images/AWS_EC2_Walkthrough(3).png" />
</p>

---

### Demo

The full EC2 creation walkthrough is available below:

🎥 `AWS_EC2_Walkthrough(1).mp4`

The demonstration covers:

* Launching an EC2 instance
* Selecting an Amazon Machine Image (AMI)
* Choosing an instance type
* Creating a key pair
* Configuring networking and security groups
* Launching the instance
* Connecting via SSH
* Terminating the instance
* Cleaning up key pairs

---

## Key Takeaways

* EC2 User Data automates instance setup during launch
* User Data scripts run with root privileges
* Bootstrapping reduces manual configuration tasks
* User Data can install software, update systems, and configure applications
* EC2 instances can be accessed securely using SSH
* Private key permissions must be secured before connecting
* Automating deployments improves consistency and scalability
* Unused EC2 resources should be terminated to avoid unnecessary costs

---

## Reflection

Learning about EC2 User Data helped me understand how cloud infrastructure can be automated from the moment a server launches. Rather than manually connecting to each instance and performing setup tasks, User Data allows servers to configure themselves automatically.

I also learned how EC2 instances are launched, connected to using SSH, and managed throughout their lifecycle. Understanding User Data and bootstrapping provides a strong foundation for automation, Infrastructure as Code, and modern DevOps practices.
