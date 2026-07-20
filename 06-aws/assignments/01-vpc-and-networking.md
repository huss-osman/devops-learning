# AWS VPC & Networking: Deploying a Secure AWS Environment

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-VPC-orange)
![EC2](https://img.shields.io/badge/AWS-EC2-orange)
![CloudWatch](https://img.shields.io/badge/AWS-CloudWatch-FF4F8B)
![Amazon Linux](https://img.shields.io/badge/OS-Amazon%20Linux-blue?logo=linux)

<p align="center">
<img width="750" alt="Architecture Diagram" src="https://github.com/user-attachments/assets/4c233bac-f9fc-4731-815e-01ae852d64df" />
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
<img width="1000" alt="VPC" src="https://github.com/user-attachments/assets/f9f3ff86-e68e-435f-999a-c8ab2199bbcf" /> 
</p>

---

# Creating the Subnets

The VPC was divided into two separate **/24 subnets**, providing logical separation between public-facing and internal resources.

Configuration:

- Public Subnet → `10.0.0.0/24`
- Private Subnet → `10.0.1.0/24`

Each subnet provides **251 usable IP addresses**, with AWS reserving five addresses in every subnet for internal networking purposes.

<p align="center">
<img width="1000" alt="Subnets" src="https://github.com/user-attachments/assets/677f6dc5-5d61-4333-ac74-4625044f0757" />
</p>

> [!NOTE]
> A subnet is not inherently public or private. Whether it becomes public or private depends entirely on the route table associated with it.

---

# Creating the Internet Gateway

An Internet Gateway was created and attached to the VPC to allow communication between the public subnet and the internet.

Without an Internet Gateway, resources inside the VPC would remain isolated and unable to receive or send internet traffic.

<p align="center">
<img width="1000" alt="Internet Gateway" src="https://github.com/user-attachments/assets/1f53042b-5021-4f59-a765-4a12297907fe" /> 
</p>

---

# Creating the NAT Gateway

A NAT Gateway was deployed inside the public subnet and associated with an Elastic IP address.

This allows instances in the private subnet to initiate outbound internet connections for tasks such as package installation and software updates while preventing inbound connections from the internet.

<p align="center">
<img width="1000" alt="NAT Gateway" src="https://github.com/user-attachments/assets/287bc8f8-118e-4633-9b3a-f3bd1a12eb43" /> 
</p>

> [!IMPORTANT]
> NAT Gateways provide **outbound-only** internet connectivity for private resources and must always be deployed within a public subnet.

---

# Configuring Route Tables

Separate route tables were created for the public and private subnets.

The public route table directs internet-bound traffic to the Internet Gateway, while the private route table forwards outbound traffic through the NAT Gateway.

<p align="center">
<img width="1000" alt="Route Tables" src="https://github.com/user-attachments/assets/a4cb6603-455a-498e-8ce1-802defc8f053" /> 
</p>

<p align="center">
<img width="1000" alt="Route Tables" src="https://github.com/user-attachments/assets/d2c7233c-f7c0-46fe-9363-564dc414995b" />
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
<img width="1000" alt="Security Groups" src="https://github.com/user-attachments/assets/c1ce1bc3-e50d-4ad8-8216-88492153e3d4"" /> 
</p>

<p align="center">
<img width="1000" alt="Security Groups" src="https://github.com/user-attachments/assets/6be364c9-22ee-4043-967d-672217f1ca2e"" /> 
</p>

> [!IMPORTANT]
> Instead of allowing SSH from an IP address, the private instance references the public instance's Security Group. This ensures only the Bastion Host can establish SSH connections to the private instance.

---

# Launching the EC2 Instances

Two Amazon Linux 2023 EC2 instances were launched.

The first instance resides in the public subnet and acts as both the web server and Bastion Host.

The second instance resides entirely inside the private subnet without a public IPv4 address.

<p align="center">
<img width="1000" alt="EC2 Instances" src="https://github.com/user-attachments/assets/eec1a047-091d-49a9-b7f3-22d311714794" />
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

<p align="center">
<img width="1000" alt="SSH Bastion" src="https://github.com/user-attachments/assets/185482e9-fcbb-4d0f-86df-7a300970146f" /> 
</p>

The Bastion Host acts as the single secure entry point into the private subnet, preventing direct internet access to internal resources.

---

# Installing Apache

Apache HTTP Server was installed on the public EC2 instance to verify that inbound HTTP traffic could successfully reach the public subnet.

```bash
sudo dnf install -y httpd
sudo systemctl enable --now httpd
echo "AWS Assignment 1 Works!" | sudo tee /var/www/html/index.html
```

<p align="center">
<img width="1000" alt="Apache Running" src="https://github.com/user-attachments/assets/bbf395c2-9db2-4c9e-8f99-ab36210a6347" /> 
</p>

The commands:

- Installed Apache
- Started the web server
- Enabled automatic startup during boot
- Created a simple test web page

---

## Verifying the Web Server Locally

A local `curl` request confirms the server is responding on the EC2 instance itself before involving the Internet Gateway, Route Tables, or Security Groups.

<p align="center">
<img width="750" alt="Local Apache Test" src="https://github.com/user-attachments/assets/2535ce7c-f0f5-4bd0-a5b6-0cdf2a51ac45" /> 
</p>

A successful response confirms that Apache is correctly installed, running, and serving content locally before validating external HTTP connectivity.

---

# Verifying HTTP Connectivity

Once Apache was running, the web server became publicly accessible through the EC2 instance's public IPv4 address.

Opening the address in a browser confirmed that traffic successfully reached the public subnet through the Internet Gateway before being served by Apache.

<p align="center">
<img width="550" alt="Browser Test" src="https://github.com/user-attachments/assets/125c17d1-e6b0-468c-8961-ac8ce3131517" /> 
</p>

This verified that:

- Internet Gateway was functioning correctly
- Route Tables were configured correctly
- Security Groups permitted HTTP traffic
- Apache was successfully serving web content

---

# Accessing the Private EC2 Instance

After connecting to the Bastion Host, SSH was used to access the private EC2 instance using its private IP address.

<p align="center">
<img width="800" alt="Private SSH" src="https://github.com/user-attachments/assets/7c2993b2-9ffc-4e38-ab23-adafe0cd961a" />
</p>

Because the private instance has no public IP address, it cannot be accessed directly from the internet. All administration is performed through the Bastion Host.

> [!IMPORTANT]
> This Bastion Host architecture is commonly used in production environments to securely manage private infrastructure without exposing internal resources to the public internet.

---

# Testing NAT Gateway Connectivity

The private EC2 instance was tested to confirm it could reach the internet through the NAT Gateway.

<p align="center">
<img width="750" alt="NAT Connectivity" src="https://github.com/user-attachments/assets/b974af3a-c2fe-439c-a29f-60e4f9c513cd" />
</p>

The successful responses confirmed that:

- The private subnet had outbound internet connectivity
- The NAT Gateway was operating correctly
- Package downloads and software updates could be performed without exposing the instance publicly

---

# Configuring CloudWatch Monitoring

Detailed monitoring is already enabled on both instances, but the default EC2 metrics don't include memory or disk-space usage - the hypervisor can't see inside the guest OS, so those need the CloudWatch Agent.

First, an IAM role (`Assignment-EC2-Cloudwatch`) with `CloudWatchAgentServerPolicy` (lets the agent push metrics) and `AmazonSSMManagedInstanceCore` (enables Session Manager), attached to both instances:

<p align="center">
<img width="1000" alt="CloudWatch IAM Role" src="https://github.com/user-attachments/assets/fe4f8601-e8ef-4d86-86b0-381aedbd90af" /> 
</p>

Then the agent is installed and started on each instance:

```bash
sudo dnf install -y amazon-cloudwatch-agent

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a fetch-config -m ec2 -s \
  -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json
```

Both instances then report into the `CWAgent` namespace:

<p align="center">
<img width="1000" alt="CloudWatch Metrics" src="https://github.com/user-attachments/assets/79868940-e173-40fb-aaad-edecfc3d3754" /> 
</p>

The neat detail: the private instance's metrics still land in CloudWatch despite it having no public IP - that traffic egresses through the NAT Gateway, the exact same path proven in step 12.

---

# Cleaning Up the Infrastructure

A NAT Gateway and its Elastic IP bill by the hour whether you use them or not, so teardown matters. In order:

- **Delete the NAT Gateway** (`Assignment-NAT`) - the main meter running.
- **Release the Elastic IP** - an unattached EIP is also chargeable.
- **Terminate both EC2 instances** - this also stops the detailed-monitoring and public-IPv4 charges.
- **Delete the VPC** - this cleans up the subnets and route tables; detach and delete the Internet Gateway as part of it.

Leaving the VPC, subnets, route tables, IGW, and security groups in place is free while idle - only the NAT Gateway, the EIP, the running instances, and detailed monitoring actually cost anything.

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
