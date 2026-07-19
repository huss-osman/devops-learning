# AWS VPC & Networking: Deploying a Secure AWS Environment

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-VPC-orange)
![EC2](https://img.shields.io/badge/AWS-EC2-orange)
![CloudWatch](https://img.shields.io/badge/AWS-CloudWatch-FF4F8B)
![Amazon Linux](https://img.shields.io/badge/OS-Amazon%20Linux-blue?logo=linux)

<p align="center">
<img width="1000" alt="Architecture Diagram" src="images/aws-vpc-networking-diagram.png" />
</p>

This project demonstrates how to build a **production-style AWS network** completely from scratch. It includes a custom Amazon VPC, public and private subnets, Internet and NAT Gateways, route tables, security groups, EC2 instances, a bastion host, and CloudWatch monitoring.

The objective was to understand how real-world AWS networking is designed, how traffic flows between public and private resources, and how secure architectures are built using network segmentation, least-privilege access, and monitoring.

---

## Objective

The goal of this project was to:

- Build a custom Amazon VPC
- Configure public and private subnets
- Enable internet connectivity using an Internet Gateway
- Provide outbound-only internet access with a NAT Gateway
- Configure route tables for both subnets
- Secure workloads using Security Groups
- Deploy public and private EC2 instances
- Access a private instance through a Bastion Host
- Configure CloudWatch monitoring
- Understand AWS networking through a hands-on deployment

---

## Architecture

The deployment follows a common production networking pattern:

1. A custom Amazon VPC provides an isolated private network.
2. The public subnet connects directly to the Internet through an Internet Gateway.
3. The private subnet reaches the internet using a NAT Gateway while remaining inaccessible from outside the VPC.
4. A Bastion Host provides the only SSH entry point into the private subnet.
5. Security Groups restrict communication using least-privilege principles.
6. CloudWatch monitors both EC2 instances for infrastructure visibility.

---

## What It Deploys

The project provisions a secure AWS networking environment using production-style networking components.

Infrastructure deployed:

- Custom Amazon VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway with Elastic IP
- Public EC2 Bastion Host
- Private EC2 Instance
- Least-Privilege Security Groups
- Amazon CloudWatch Monitoring

---

## How It Works

1. A custom Amazon VPC provides an isolated network for all resources.
2. The public subnet connects directly to the internet through an Internet Gateway.
3. The private subnet accesses the internet through a NAT Gateway for outbound traffic only.
4. The Bastion Host provides secure SSH access to the private EC2 instance.
5. CloudWatch monitors both EC2 instances and collects infrastructure metrics.

---

# Creating the VPC

A custom Amazon VPC was created using the CIDR block **10.0.0.0/16**, providing an isolated network capable of supporting approximately 65,000 private IP addresses.

DNS Resolution and DNS Hostnames were enabled so that instances launched inside the VPC could resolve DNS names and receive public DNS hostnames where required.

<p align="center">
<img width="1000" alt="VPC" src="images/01-vpc.png" />
</p>

---

# Creating the Subnets

The VPC was divided into two separate **/24 subnets**, providing logical separation between public-facing and internal resources.

Configuration:

- Public Subnet → `10.0.0.0/24`
- Private Subnet → `10.0.1.0/24`

Each subnet provides **251 usable IP addresses**, with AWS reserving five addresses in every subnet for internal networking purposes.

<p align="center">
<img width="1000" alt="Subnets" src="images/02-subnets.png" />
</p>

> [!NOTE]
> A subnet is not inherently public or private. Whether it becomes public or private depends entirely on the route table associated with it.

---

# Creating the Internet Gateway

An Internet Gateway was created and attached to the VPC to allow communication between the public subnet and the internet.

Without an Internet Gateway, resources inside the VPC would remain isolated and unable to receive or send internet traffic.

<p align="center">
<img width="1000" alt="Internet Gateway" src="images/03-internet-gateway.png" />
</p>

---

# Creating the NAT Gateway

A NAT Gateway was deployed inside the public subnet and associated with an Elastic IP address.

This allows instances in the private subnet to initiate outbound internet connections for tasks such as package installation and software updates while preventing inbound connections from the internet.

<p align="center">
<img width="1000" alt="NAT Gateway" src="images/04-nat-gateway.png" />
</p>

> [!IMPORTANT]
> NAT Gateways provide **outbound-only** internet connectivity for private resources and must always be deployed within a public subnet.

---

# Configuring Route Tables

Separate route tables were created for the public and private subnets.

The public route table directs internet-bound traffic to the Internet Gateway, while the private route table forwards outbound traffic through the NAT Gateway.

<p align="center">
<img width="1000" alt="Route Tables" src="images/05-route-tables.png" />
</p>

The routing configuration provides:

- Public Subnet → Internet Gateway
- Private Subnet → NAT Gateway
- Internal VPC communication through the default local route

---

# Configuring Security Groups

Two Security Groups were configured following the principle of least privilege.

The public EC2 instance allows:

- SSH (22) → My IP only
- HTTP (80) → My IP only

The private EC2 instance allows:

- SSH (22) → Public EC2 Security Group only

<p align="center">
<img width="1000" alt="Security Groups" src="images/06-security-groups.png" />
</p>

> [!IMPORTANT]
> Instead of allowing SSH from an IP address, the private instance references the public instance's Security Group. This ensures only the Bastion Host can establish SSH connections to the private instance.

---

# Launching the EC2 Instances

Two Amazon Linux 2023 EC2 instances were launched.

The first instance resides in the public subnet and acts as both the web server and Bastion Host.

The second instance resides entirely inside the private subnet without a public IPv4 address.

<p align="center">
<img width="1000" alt="EC2 Instances" src="images/07-ec2-instances.png" />
</p>

Configuration included:

- Amazon Linux 2023
- t3.micro
- Public EC2 with public IPv4
- Private EC2 without public IPv4
- Detailed CloudWatch monitoring enabled

---

# Connecting to the Bastion Host

The public EC2 instance was accessed securely using SSH.

```bash
ssh -i "assignment-key.pem" ec2-user@<public-dns>
```

<p align="center">
<img width="1000" alt="SSH Bastion" src="images/08-ssh-bastion.png" />
</p>

The Bastion Host acts as the single secure entry point into the private subnet, preventing direct internet access to internal resources.

---

---

# Installing Apache

Apache HTTP Server was installed on the public EC2 instance to verify that inbound HTTP traffic could successfully reach the public subnet.

```bash
sudo dnf install -y httpd
sudo systemctl enable --now httpd
echo "AWS Assignment 1 Works!" | sudo tee /var/www/html/index.html
```

<p align="center">
<img width="1000" alt="Apache Running" src="images/09-apache-running.png" />
</p>

The commands:

- Installed Apache
- Started the web server
- Enabled automatic startup during boot
- Created a simple test web page

---

# Verifying HTTP Connectivity

Once Apache was running, the web server became publicly accessible through the EC2 instance's public IPv4 address.

Opening the address in a browser confirmed that traffic successfully reached the public subnet through the Internet Gateway before being served by Apache.

<p align="center">
<img width="1000" alt="Browser Test" src="images/10-browser-test.png" />
</p>

This verified that:

- Internet Gateway was functioning correctly
- Route Tables were configured correctly
- Security Groups permitted HTTP traffic
- Apache was successfully serving web content

---

# Accessing the Private EC2 Instance

After connecting to the Bastion Host, SSH was used to access the private EC2 instance using its private IP address.

```bash
ssh -i assignment-key.pem ec2-user@10.0.1.xxx
```

<p align="center">
<img width="1000" alt="Private SSH" src="images/11-private-ec2-ssh.png" />
</p>

Because the private instance has no public IP address, it cannot be accessed directly from the internet. All administration is performed through the Bastion Host.

> [!IMPORTANT]
> This Bastion Host architecture is commonly used in production environments to securely manage private infrastructure without exposing internal resources to the public internet.

---

# Testing NAT Gateway Connectivity

The private EC2 instance was tested to confirm it could reach the internet through the NAT Gateway.

```bash
ping 8.8.8.8
```

<p align="center">
<img width="1000" alt="NAT Connectivity" src="images/12-nat-connectivity.png" />
</p>

The successful responses confirmed that:

- The private subnet had outbound internet connectivity
- The NAT Gateway was operating correctly
- Package downloads and software updates could be performed without exposing the instance publicly

---

# Configuring CloudWatch Monitoring

Detailed monitoring was enabled for both EC2 instances, and the CloudWatch Agent was configured to publish memory and disk metrics.

An IAM Role was attached to each instance, granting permission to send metrics securely to Amazon CloudWatch.

<p align="center">
<img width="1000" alt="CloudWatch IAM Role" src="images/13-cloudwatch-role.png" />
</p>

---

# Monitoring the Infrastructure

After the CloudWatch Agent was configured, both EC2 instances began publishing additional operating system metrics.

These included memory utilisation and disk usage, providing greater visibility into instance health beyond the default EC2 metrics.

<p align="center">
<img width="1000" alt="CloudWatch Metrics" src="images/14-cloudwatch-metrics.png" />
</p>

---

# Final Architecture

The completed deployment demonstrates a secure AWS networking architecture following common production design principles.

The public EC2 instance acts as both the web server and Bastion Host, while the private EC2 instance remains isolated from the internet. Outbound internet access is provided through the NAT Gateway, and CloudWatch provides continuous monitoring for both instances.

<p align="center">
<img width="1000" alt="Architecture" src="images/aws-vpc-networking-diagram.png" />
</p>

---

# Cleaning Up the Infrastructure

After completing the deployment and testing the networking configuration, the AWS resources were removed to avoid unnecessary charges.

<p align="center">
<img width="1000" alt="Resource Cleanup" src="images/15-cleanup.png" />
</p>

The cleanup process included terminating both EC2 instances, deleting the NAT Gateway and releasing its Elastic IP, detaching and removing the Internet Gateway, and finally deleting the subnets and VPC.

> [!NOTE]
> The NAT Gateway and Elastic IP continue to incur charges while allocated, making them the highest-priority resources to remove after completing the project.

---

## Getting Started

#### Prerequisites: An AWS account with permission to create VPC networking resources.

#### 1. Clone the Repository

```bash
git clone https://github.com/huss-osman/devops-learning.git
cd devops-learning/06-aws/assignments/01-vpc-and-networking
```

#### 2. Follow the Walkthrough

Complete the project by following the deployment steps in this repository.

#### 3. Deploy the Infrastructure

Provision the AWS networking resources using the AWS Management Console.

#### 4. Clean Up

Delete the deployed AWS resources when you have finished to avoid unnecessary charges.

---

# Troubleshooting

Some issues encountered during deployment included:

- Incorrect VPC routing configuration
- Apache service not running
- Security Group SSH restrictions
- NAT Gateway connectivity issues
- CloudWatch Agent configuration
  
---

## Why I Built It

I wanted a hands-on understanding of:

- Designing secure AWS networking architectures
- Building custom VPCs instead of relying on default networking
- Configuring public and private subnet communication
- Understanding Internet Gateways and NAT Gateways
- Applying least-privilege security using Security Groups
- Deploying and managing EC2 instances across segmented networks
- Monitoring infrastructure using Amazon CloudWatch
- Building production-style AWS infrastructure beyond basic labs
  
---

# Key Takeaways

- Built a custom Amazon VPC from scratch
- Configured public and private subnet architecture
- Understood how Internet Gateways provide public connectivity
- Learned how NAT Gateways enable secure outbound internet access
- Configured Route Tables to control traffic flow
- Applied least-privilege Security Group rules
- Deployed both public and private EC2 instances
- Used a Bastion Host to securely access private infrastructure
- Configured IAM Roles for CloudWatch integration
- Enabled monitoring using the CloudWatch Agent
- Gained hands-on experience with production-style AWS networking
