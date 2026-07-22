# AWS Application Load Balancer: High Availability with an ALB

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![ALB](https://img.shields.io/badge/AWS-Application%20Load%20Balancer-orange)
![Amazon Linux](https://img.shields.io/badge/OS-Amazon%20Linux-blue?logo=linux)

<p align="center">
  <img width="850" alt="Application Load Balancer Architecture" src="https://github.com/user-attachments/assets/025ca542-343f-45ed-8b71-e1146bdfeb90" /> 
</p>

This project demonstrates how to deploy a **highly available web application** using an AWS Application Load Balancer. It includes multiple EC2 instances distributed across different Availability Zones, a Target Group with health checks, an HTTP listener, and Security Groups configured to ensure traffic is routed securely through the load balancer.

The objective was to understand how AWS distributes incoming traffic across healthy backend instances while improving availability, fault tolerance, and scalability. The project also demonstrates how to isolate EC2 instances from direct internet access by allowing inbound traffic only from the Application Load Balancer, following a common production-style architecture used for modern web applications.

---

## Objective

The goal of this project was to:

- Deploy two EC2 instances
- Configure user-data automation
- Deploy an Application Load Balancer
- Configure an HTTP listener
- Create a Target Group
- Configure Health Checks
- Secure traffic using Security Groups
- Verify load balancing
- Prevent direct public access to EC2 instances

---

## What It Deploys

The project provisions a highly available web application using AWS load balancing components.

Infrastructure deployed:

- Two Amazon Linux 2023 EC2 Instances
- Application Load Balancer
- HTTP Listener
- Target Group
- Health Checks
- ALB Security Group
- EC2 Security Group

---

## How It Works

1. Two EC2 instances host Apache web servers.
2. User-data automatically installs and configures Apache during launch.
3. Each instance serves different web content.
4. The Application Load Balancer accepts incoming HTTP traffic.
5. Requests are forwarded only to healthy EC2 instances.
6. The EC2 instances only accept traffic originating from the ALB Security Group.

---

# Launching the EC2 Instances

Two **Amazon Linux 2023** EC2 instances were launched using the **t3.micro** instance type.

Each instance was deployed into a different Availability Zone (**eu-west-2a** and **eu-west-2b**) to provide high availability.

Apache was automatically installed using EC2 User Data so no manual server configuration was required after launch.

```bash
#!/bin/bash

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo "<h1>Assignment 2 - EC2 instance 1 online</h1>" > /var/www/html/index.html
```

<p align="center">
<img width="1000" alt="EC2 Instances" src="https://github.com/user-attachments/assets/afdb86b0-796e-414a-ad01-a3309f8fee24" />
</p>

<p align="center">
<img width="1000" alt="EC2 User Data" src="https://github.com/user-attachments/assets/5b1c12f3-68d5-40ce-bc15-f70bbdb8904e" /> 
</p>

The second instance uses the same user-data with different HTML content, allowing each server to return a unique response during testing.

---

# Creating the Application Load Balancer

An internet-facing **Application Load Balancer** was created across both public subnets.

This allows AWS to deploy a load balancer node into each Availability Zone, improving availability if one zone becomes unavailable.

<p align="center">
<img width="1000" alt="Application Load Balancer" src="https://github.com/user-attachments/assets/2239877e-c0ed-433c-9246-66186d28728e" /> 
</p>

> [!IMPORTANT]
> Application Load Balancers must span at least two Availability Zones to provide high availability.

---

# Creating the Target Group

A Target Group named **A2-TargetGroup** was created using the **Instance** target type.

Both EC2 instances were registered on **HTTP port 80** and configured with a health check using the root path (`/`).

<p align="center">
<img width="1000" alt="Target Group" src="https://github.com/user-attachments/assets/7640b847-fc51-490d-9531-961b40cf45c3" />
</p>

---

# Configuring Security Groups

Two Security Groups were configured to isolate the backend instances.

The **ALB Security Group** allows inbound HTTP traffic from anywhere.

The **EC2 Security Group** only allows inbound HTTP traffic from the ALB Security Group.

<p align="center">
<img width="1000" alt="ALB Security Group" src="https://github.com/user-attachments/assets/952bb402-e551-4561-be0a-33b2bd40ef4b" /> 
</p>

<p align="center">
<img width="1000" alt="EC2 Security Group" src="https://github.com/user-attachments/assets/603483e2-23de-4973-b1dd-2430cd5f838f" /> 
</p>

> [!IMPORTANT]
> The EC2 instances never accept HTTP traffic directly from the internet. Only the Application Load Balancer is permitted to communicate with them.

---

# Verifying Load Balancing

Accessing the Application Load Balancer DNS name and refreshing the page causes requests to alternate between the two EC2 instances.

This confirms that the Application Load Balancer is successfully distributing requests across both healthy targets.

<p align="center">
<img width="650" alt="Load Balancing Test" src="https://github.com/user-attachments/assets/11a4c255-eda2-42c8-ba4e-71c85479ee10" /> 
</p>

---

# Verifying Direct Access is Blocked

Although both EC2 instances have public IP addresses, they cannot be accessed directly over HTTP because the Security Group only permits traffic from the Application Load Balancer.

Attempting to connect directly to an instance results in a timeout.

<p align="center">
<img width="800" alt="Direct Access Blocked" src="https://github.com/user-attachments/assets/0859d586-8eb7-49ec-b1ff-674bc6b34759" /> 
</p>

This confirms that:

- The Application Load Balancer is the only public entry point.
- The EC2 Security Group is correctly configured.
- Backend instances remain isolated from direct internet traffic.

---

# Cleaning Up the Infrastructure

Application Load Balancers and running EC2 instances incur charges while active, so it's important to remove the resources once testing is complete.

To clean up the deployment:

- **Delete the Application Load Balancer** (`A2-ALB`) - this also removes the associated load balancer nodes.
- **Delete the Target Group** (`A2-TargetGroup`) after the load balancer has been removed.
- **Terminate both EC2 instances** (`A2-EC2-1` and `A2-EC2-2`) to stop compute charges.
- **Delete the Security Groups** (`A2-ALB-SG` and `A2-EC2-SG`) if they are no longer required.
- **Delete the VPC** - this also removes the public subnets, route table, and Internet Gateway once all dependent resources have been deleted.

Leaving the VPC, subnets, route table, Internet Gateway, and Security Groups in place does not incur charges while idle. The Application Load Balancer and running EC2 instances are the primary resources that generate ongoing costs in this project.

---

## Getting Started

#### Prerequisites: An AWS account with permission to create EC2, Security Groups, Target Groups, and Application Load Balancers.

#### 1. Clone the Repository

```bash
git clone https://github.com/huss-osman/devops-learning.git
cd devops-learning/06-aws/assignments/02-application-load-balancer
```

#### 2. Follow the Walkthrough

Complete the project by following the deployment steps in this repository.

#### 3. Deploy the Infrastructure

Provision the EC2 instances, Target Group, and Application Load Balancer using the AWS Management Console.

#### 4. Clean Up

Delete the deployed AWS resources when you have finished to avoid unnecessary charges.

---

# Troubleshooting

Some issues encountered during deployment included:

- Apache service not running
- Failed health checks
- Incorrect Target Group configuration
- Security Group rule misconfiguration
- Listener forwarding issues

---

## Why I Built It

I wanted a hands-on understanding of:

- Deploying highly available applications
- Understanding Application Load Balancers
- Configuring Target Groups and Health Checks
- Securing backend infrastructure with Security Groups
- Understanding how AWS distributes traffic across Availability Zones
- Building production-style AWS architectures

---

# Key Takeaways

- Deployed an internet-facing Application Load Balancer
- Distributed traffic across multiple Availability Zones
- Configured Target Groups and Health Checks
- Applied Security Group isolation
- Verified traffic distribution across multiple EC2 instances
- Prevented direct access to backend servers
- Gained hands-on experience with highly available AWS architectures
