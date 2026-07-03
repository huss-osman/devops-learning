# NGINX on AWS EC2 + Cloudflare

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?logo=cloudflare&logoColor=white)
![OS](https://img.shields.io/badge/OS-Linux-blue?logo=linux)
![NGINX](https://img.shields.io/badge/NGINX-009639?logo=nginx&logoColor=white)

<p align="center">
  <img width="1000" alt="Architecture Diagram" src="https://github.com/huss-osman/devops-learning/blob/main/images/aws-ec2-nginx-cloudflare-diagram.png" />
</p>

This project is a production-style web server deployment built from scratch using AWS and Cloudflare. It runs inside an AWS VPC with an Internet Gateway, a public subnet, and an Ubuntu EC2 instance hosting an NGINX web server exposed securely to the internet through Cloudflare DNS and proxy services.

The goal was to understand how real-world web applications are delivered end-to-end, covering networking concepts such as DNS resolution, public IP addressing, routing, ports, security groups, and web server management in a cloud environment.
By completing this project, the setup simulates how real-world services are hosted and accessed across cloud infrastructure.

---

## Objective

The goal of this project was to:

- Launch and configure an AWS EC2 instance
- Install and configure NGINX
- Understand HTTP traffic and port 80
- Configure DNS using Cloudflare
- Route traffic from a custom domain to an EC2 instance
- Build foundational cloud and networking knowledge
- Practice real-world troubleshooting and deployment workflows

---

## How It Works

1. A user visits the custom domain configured through Cloudflare DNS  
2. Cloudflare routes traffic to the EC2 public IPv4 address  
3. Security Groups allow inbound HTTP and HTTPS traffic  
4. NGINX running on the Ubuntu EC2 instance receives the request  
5. The web server responds publicly through the configured domain

---

# Registering the Domain

The custom domain was configured and connected through Cloudflare DNS.

<p align="center">
<img width="1000" alt="Register Domain" src="https://github.com/huss-osman/devops-learning/blob/main/images/Register_Domain.png" />
</p>

---

# Launching the EC2 Instance

An Ubuntu Server EC2 instance was launched using AWS Free Tier eligible settings.

Configuration included:

- Ubuntu 26.04 LTS
- t3.micro instance
- Public IP enabled
- Free Tier eligible AMI

<p align="center">
<img width="1000" alt="EC2 Setup" src="https://github.com/huss-osman/devops-learning/blob/main/images/Setting_Up_ec2.png" />
</p>

---

# Configuring Network Settings

Security Groups were configured to allow the correct inbound traffic.

Ports configured:

- SSH (22) → My IP only
- HTTP (80) → Anywhere
- HTTPS (443) → Anywhere

<p align="center">
<img width="1000" alt="Network Settings" src="https://github.com/huss-osman/devops-learning/blob/main/images/Network_Settings_ec2.png" />
</p>

> [!IMPORTANT]
> Port `22` was restricted to **My IP only** to reduce unauthorized SSH access attempts.

---

# Creating the SSH Key Pair

An ED25519 SSH key pair was generated for secure server access.

<p align="center">
<img width="900" alt="Create Key Pair" src="https://github.com/huss-osman/devops-learning/blob/main/images/Creating_Key_Pair.png" />
</p>

---

# Securing the Private Key

The private key permissions were restricted using `chmod 400`.

```bash
chmod 400 nginx-project-key.pem
```

<p align="center">
<img width="800" alt="Key Permissions" src="https://github.com/huss-osman/devops-learning/blob/main/images/Set_Correct_Permission.png" />
</p>

> [!IMPORTANT]
> `chmod 400` ensures the private SSH key can only be read by the current user.
>
> SSH clients will often refuse to use private keys with insecure permissions.

---

# Configuring Cloudflare DNS

A Cloudflare DNS A record was configured to point the subdomain to the EC2 public IP address.

<p align="center">
<img width="1000" alt="Cloudflare DNS" src="https://github.com/huss-osman/devops-learning/blob/main/images/DNS_Management_Cloudflare.png" />
</p>

Configuration used:

- Type: `A`
- Name: `nginx`
- Target: EC2 Public IPv4
- Proxy Status: Enabled

---

# Installing NGINX

NGINX was installed and enabled on the Ubuntu server.

```bash
sudo apt update
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
```

## Command Breakdown

- `sudo apt update` → Refreshes the package index from Ubuntu repositories

- `sudo apt install -y nginx` → Installs the NGINX web server automatically

- `sudo systemctl enable nginx` → Enables NGINX to start automatically during boot

- `sudo systemctl start nginx` → Starts the NGINX service immediately

---

# Verifying NGINX Status

NGINX service status was checked using `systemctl`.

```bash
sudo systemctl status nginx
```

<p align="center">
<img width="1000" alt="NGINX Status" src="https://github.com/huss-osman/devops-learning/blob/main/images/Check_NGINX_System_Status.png" />
</p>

The output confirmed:

- NGINX was active
- The service was running successfully
- Worker processes were created correctly

---

# Testing Connectivity

## Ping Test

```bash
ping -c 4 nginx.osmanhus.co.uk
```

<p align="center">
<img width="900" alt="Ping Test" src="https://github.com/huss-osman/devops-learning/blob/main/images/Ping_NGINX_Connectivity.png" />
</p>

This confirmed the domain resolved successfully and packets reached the server.

---

## Traceroute Test

```bash
traceroute nginx.osmanhus.co.uk
```

<p align="center">
<img width="900" alt="Traceroute" src="https://github.com/huss-osman/devops-learning/blob/main/images/Traceroute_NGINX.png" />
</p>

This showed the network path packets traveled through before reaching the destination.

---

## DNS Lookup Test

```bash
nslookup nginx.osmanhus.co.uk
```

<p align="center">
<img width="900" alt="NSLookup" src="https://github.com/huss-osman/devops-learning/blob/main/images/Nslookup_NGINX.png" />
</p>

> [!NOTE]
> DNS commonly uses **Port 53** for queries and responses.
>
> The `#53` shown in the output indicates DNS communication occurring over Port 53.

The output confirmed:

- The domain resolved correctly
- Cloudflare DNS was working
- Multiple IPv4 and IPv6 addresses were returned

---

# Final Result

After configuration and troubleshooting, the NGINX web server became publicly accessible through the custom domain.

<p align="center">
<img width="1000" alt="NGINX Website" src="https://github.com/huss-osman/devops-learning/blob/main/images/Website_NGINX_Image.png" />
</p>

---


# Troubleshooting 

Some issues encountered during deployment included:

- NGINX not running correctly
- DNS pointing to the wrong IP address
  
---

## Why I Built It

I wanted a hands-on understanding of:

- How DNS routing and public domain traffic work in real-world environments  
- Configuring and managing NGINX web servers on AWS EC2  
- How cloud networking components fit together across AWS infrastructure  
- Securing public-facing infrastructure using Security Groups and SSH restrictions  
- Troubleshooting real networking and connectivity issues across Linux environments  
- Building something more practical and production-style beyond basic demos
  
---

# Key Takeaways

- Learned how EC2 instances work in AWS
- Understood how Security Groups control inbound traffic
- Gained experience using Linux server management commands
- Learned how DNS records map domains to servers
- Practiced troubleshooting networking and connectivity issues
- Understood the relationship between Cloudflare, DNS, and web servers
