<img width="1000" height="500" alt="AWS Banner" src="https://github.com/huss-osman/devops-learning/blob/main/images/AWS%20banner.png" />

# AWS

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![Compute](https://img.shields.io/badge/Compute-EC2-orange?logo=amazonec2&logoColor=white)
![Containers](https://img.shields.io/badge/Containers-ECS%20%7C%20EKS-blue?logo=docker&logoColor=white)
![Networking](https://img.shields.io/badge/Networking-VPC%20%7C%20Route%2053-purple?logo=amazonaws&logoColor=white)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Amazon Web Services (AWS)** through practical cloud infrastructure workflows.

AWS is a major part of modern infrastructure and application deployment. It allows applications and their supporting infrastructure to be built, secured, deployed, and scaled across cloud environments using a wide range of managed services.

The focus throughout this repository is understanding **how containers, Dockerfiles, images, and networking work** through practical learning.

---

## 🧠 New to AWS? Read This First

- AWS can feel overwhelming at first — that’s normal.
- Focus on the core building blocks first: IAM, EC2, VPC, Security Groups, Load Balancers, DNS, and Containers.
- Always set up billing alerts and MFA before launching services.
- Learn how traffic flows from users to applications.
- Use small hands-on demos to understand real cloud behaviour.

> [!IMPORTANT]
> Before using AWS, always secure the account with MFA and billing alerts.  
> A small mistake in cloud infrastructure can create unexpected costs.

---

## Learning Objectives

By working through this module, I aimed to:

- Understand the core AWS global infrastructure
- Secure an AWS account using IAM, MFA, users, groups, roles, and policies
- Launch and configure EC2 instances
- Understand Security Groups, public IPs, private IPs, Elastic IPs, and common ports
- Understand storage services such as EBS, AMIs, and EFS
- Learn high availability, scalability, load balancing, and Auto Scaling
- Understand containers on AWS using ECS, ECR, and EKS
- Learn AWS networking through VPCs, subnets, NAT, route tables, NACLs, and endpoints
- Understand DNS with Route 53
- Understand CDN basics with CloudFront
- Apply AWS knowledge through practical cloud projects

---

## Topics Covered

### Fundamentals

- [AWS Introduction](./fundamentals/01-aws-introduction.md)  
  What AWS is, why it matters, and how cloud computing fits into DevOps.

- [AWS History](./fundamentals/02-aws-history.md)  
  A short overview of AWS and how it became a major cloud provider.

- [AWS Facts](./fundamentals/03-aws-facts.md)  
  Important AWS facts, terminology, and service categories.

- [AWS Cloud Use Cases](./fundamentals/04-aws-cloud-use-cases.md)  
  Common real-world use cases for AWS cloud infrastructure.

- [Global Infrastructure](./fundamentals/05-global-infrastructure.md)  
  AWS Regions, Availability Zones, and Edge Locations.

- [AWS Console Tour](./fundamentals/06-aws-console-tour.md)  
  Navigating the AWS Management Console.

- [AWS Account Setup](./fundamentals/07-aws-account-setup.md)  
  Creating an AWS account safely.

- [Billing and MFA Setup](./fundamentals/08-billing-and-mfa-setup.md)  
  Securing the root account, enabling MFA, and setting billing alerts.

---

### IAM

- [IAM Introduction](./iam/01-iam-introduction.md)  
  Identity and Access Management fundamentals.

- [Users and Groups](./iam/02-users-and-groups.md)  
  Creating users, groups, and understanding account access.

- [Permissions](./iam/03-permissions.md)  
  Understanding how permissions control access in AWS.

- [IAM Policies](./iam/04-iam-policies.md)  
  Policy structure, inheritance, and JSON-based access control.

- [Password Policy and MFA](./iam/05-password-policy-and-mfa.md)  
  Improving account security with strong passwords and MFA.

- [Access Keys, CLI, and SDK](./iam/06-access-keys-cli-sdk.md)  
  Understanding programmatic access to AWS.

- [IAM Roles](./iam/07-iam-roles.md)  
  Granting permissions to AWS services securely.

- [IAM Security Tools and Best Practices](./iam/08-iam-security-best-practices.md)  
  Applying IAM best practices for safer cloud usage.

---

### Compute

- [Amazon EC2](./compute/01-amazon-ec2.md)  
  Understanding virtual servers in AWS.

- [EC2 Sizing and Configuration](./compute/02-ec2-sizing-and-configuration.md)  
  Choosing instance types, AMIs, storage, and networking options.

- [EC2 User Data](./compute/03-ec2-user-data.md)  
  Bootstrapping instances automatically during launch.

- [EC2 Instance Types](./compute/04-ec2-instance-types.md)  
  Understanding different instance families and use cases.

- [EC2 Web Server Deployment](./compute/05-ec2-web-server-deployment.md)  
  Deploying and accessing a web server on an EC2 instance.

- [EC2 Purchasing Options](./compute/06-ec2-purchasing-options.md)  
  On-Demand, Reserved, Spot, and other pricing models.
  
---

### Security Groups & Cloud Networking Basics

- [Security Groups](./networking/01-security-groups.md)  
  Controlling inbound and outbound traffic for AWS resources.

- [Security Groups Deep Dive](./networking/02-security-groups-deep-dive.md)  
  Rules, references, common ports, and troubleshooting access.

- [Public vs Private IP](./networking/03-public-vs-private-ip.md)  
  Understanding how AWS resources are reached internally and externally.

- [Elastic IPs](./networking/04-elastic-ips.md)  
  Static public IP addresses and when to use them.

---

### Storage

- [EBS Volumes](./storage/01-ebs-volumes.md)  
  Block storage for EC2 instances.

- [AMI Overview](./storage/02-ami-overview.md)  
  Machine images used to launch repeatable EC2 environments.

- [Amazon EFS](./storage/03-amazon-efs.md)  
  Shared file storage across multiple instances.

---

### Load Balancing & Scalability

- [Scalability and High Availability](./load-balancing/01-scalability-and-high-availability.md)  
  Understanding vertical scaling, horizontal scaling, and resilient systems.

- [Elastic Load Balancing](./load-balancing/02-elastic-load-balancing.md)  
  Distributing traffic across multiple targets.

- [Application Load Balancer](./load-balancing/03-application-load-balancer.md)  
  HTTP/HTTPS load balancing for applications.

- [Network Load Balancer](./load-balancing/04-network-load-balancer.md)  
  High-performance TCP/UDP load balancing.

- [SSL and TLS](./load-balancing/05-ssl-and-tls.md)  
  Certificates, HTTPS, SNI, and secure traffic.

- [Auto Scaling Groups](./load-balancing/06-auto-scaling-groups.md)  
  Automatically scaling EC2 capacity based on demand.

---

### Containers

- [Containers on AWS](./containers/01-containers-on-aws.md)  
  Overview of container services in AWS.

- [Docker on AWS](./containers/02-docker-on-aws.md)  
  How Docker images and containers fit into AWS deployments.

- [ECS Overview](./containers/03-ecs-overview.md)  
  Running containers using Amazon ECS.

- [ECS IAM Roles](./containers/04-ecs-iam-roles.md)  
  Task roles, execution roles, and secure permissions for containers.

- [ECS Load Balancer Integration](./containers/05-ecs-load-balancer-integration.md)  
  Connecting ECS services to load balancers.

- [ECS Service Auto Scaling](./containers/06-ecs-service-auto-scaling.md)  
  Scaling container workloads automatically.

- [Amazon ECR](./containers/07-amazon-ecr.md)  
  Storing Docker images in AWS.

- [Amazon EKS Overview](./containers/08-eks-overview.md)  
  Kubernetes on AWS.

---

### Serverless

- [Serverless Overview](./serverless/01-serverless-overview.md)  
  Understanding serverless computing.

- [AWS Lambda](./serverless/02-aws-lambda.md)  
  Running code without managing servers.

- [Lambda Benefits and Use Cases](./serverless/03-lambda-benefits-use-cases.md)  
  Why Lambda is useful and where it fits.

---

### AWS Networking

- [Amazon VPC](./networking/05-amazon-vpc.md)  
  Building isolated cloud networks.

- [CIDR and Subnets](./networking/06-cidr-and-subnets.md)  
  Understanding IP ranges and subnetting in AWS.

- [Internet Gateway](./networking/07-internet-gateway.md)  
  Allowing public internet access for VPC resources.

- [Bastion Hosts](./networking/08-bastion-hosts.md)  
  Secure access to private resources.

- [NAT Gateway](./networking/09-nat-gateway.md)  
  Allowing private subnets to access the internet.

- [NACLs](./networking/10-nacls.md)  
  Stateless subnet-level network filtering.

- [VPC Peering](./networking/11-vpc-peering.md)  
  Connecting VPCs together privately.

- [VPC Endpoints](./networking/12-vpc-endpoints.md)  
  Private access to AWS services using PrivateLink.

- [IPv6 in AWS](./networking/13-ipv6-in-aws.md)  
  IPv6 routing, troubleshooting, and egress-only internet gateways.

---

### DNS & Route 53

- [Amazon Route 53](./dns-route53/01-amazon-route-53.md)  
  AWS DNS service overview.

- [Hosted Zones](./dns-route53/02-hosted-zones.md)  
  Managing DNS zones in AWS.

- [DNS Terminology](./dns-route53/03-dns-terminology.md)  
  Records, resolvers, domains, and name servers.

- [DNS Record Types](./dns-route53/04-dns-record-types.md)  
  A, CNAME, Alias, TTL, and common DNS records.

- [Route 53 Routing Policies](./dns-route53/05-routing-policies.md)  
  Simple, weighted, latency-based, failover, geolocation, and multivalue routing.

- [Domains and Registrars](./dns-route53/06-domains-and-registrars.md)  
  Understanding domain registration vs DNS hosting.

---

### CDN & CloudFront

- [CloudFront Overview](./cdn-cloudfront/01-cloudfront-overview.md)  
  Content delivery networks and edge caching.

- [CloudFront Origins](./cdn-cloudfront/02-cloudfront-origins.md)  
  Using S3, ALB, and EC2 as CloudFront origins.

---

### Assignments

- [VPC & Networking](./assignments/01-vpc-and-networking.md)  
  Building a custom VPC with public/private subnets, an Internet Gateway, NAT Gateway, EC2 instances, and security groups.

- [Application Load Balancer](./assignments/02-application-load-balancer.md)  
  Deploying two EC2 instances behind an ALB with health checks, target groups, listener rules, and security group isolation.

- [S3 Static Website + CloudFront CDN](./assignments/03-s3-static-website-cloudfront.md)  
  Hosting a static website using S3, serving it through CloudFront with HTTPS, edge caching, and cache invalidation.

- [Serverless API with Lambda, IAM & API Gateway](./assignments/04-lambda-api-gateway-dynamodb.md)  
  Building a serverless REST API using API Gateway, Lambda, DynamoDB, IAM, and CloudWatch Logs.
  
---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Building small AWS environments to understand behaviour
- Connecting services together instead of learning them in isolation
- Using diagrams to understand traffic flow
- Practicing security-first cloud habits
- Troubleshooting real access, networking, DNS, and deployment issues
- Treating cost control as part of cloud engineering

The goal is long-term understanding that transfers directly into **AWS**, **cloud infrastructure**, and modern **DevOps environments**.

---

## Folder Structure

```bash
06-aws/
├── README.md
│
├── fundamentals/
│   ├── README.md
│   ├── 01-aws-introduction.md
│   ├── 02-aws-history.md
│   ├── 03-aws-facts.md
│   ├── 04-aws-cloud-use-cases.md
│   ├── 05-global-infrastructure.md
│   ├── 06-aws-console-tour.md
│   ├── 07-aws-account-setup.md
│   └── 08-billing-and-mfa-setup.md
│
├── iam/
│   ├── README.md
│   ├── 01-iam-introduction.md
│   ├── 02-users-and-groups.md
│   ├── 03-permissions.md
│   ├── 04-iam-policies.md
│   ├── 05-password-policy-and-mfa.md
│   ├── 06-access-keys-cli-sdk.md
│   ├── 07-iam-roles.md
│   └── 08-iam-security-best-practices.md
│
├── compute/
│   ├── README.md
│   ├── 01-amazon-ec2.md
│   ├── 02-ec2-sizing-and-configuration.md
│   ├── 03-ec2-user-data.md
│   ├── 04-ec2-instance-types.md
│   └── 05-ec2-purchasing-options.md
│
├── networking/
│   ├── README.md
│   ├── 01-security-groups.md
│   ├── 02-security-groups-deep-dive.md
│   ├── 03-public-vs-private-ip.md
│   ├── 04-elastic-ips.md
│   ├── 05-amazon-vpc.md
│   ├── 06-cidr-and-subnets.md
│   ├── 07-internet-gateway.md
│   ├── 08-bastion-hosts.md
│   ├── 09-nat-gateway.md
│   ├── 10-nacls.md
│   ├── 11-vpc-peering.md
│   ├── 12-vpc-endpoints.md
│   └── 13-ipv6-in-aws.md
│
├── storage/
│   ├── README.md
│   ├── 01-ebs-volumes.md
│   ├── 02-ami-overview.md
│   └── 03-amazon-efs.md
│
├── load-balancing/
│   ├── README.md
│   ├── 01-scalability-and-high-availability.md
│   ├── 02-elastic-load-balancing.md
│   ├── 03-application-load-balancer.md
│   ├── 04-network-load-balancer.md
│   ├── 05-ssl-and-tls.md
│   └── 06-auto-scaling-groups.md
│
├── containers/
│   ├── README.md
│   ├── 01-containers-on-aws.md
│   ├── 02-amazon-ecs.md
│   ├── 03-ecs-iam-roles.md
│   ├── 04-ecs-load-balancer-integration.md
│   ├── 05-ecs-service-auto-scaling.md
│   ├── 06-amazon-ecr.md
│   └── 07-amazon-eks.md
│
├── serverless/
│   ├── README.md
│   ├── 01-serverless-overview.md
│   ├── 02-aws-lambda.md
│   └── 03-lambda-benefits-use-cases.md
│
├── dns-route53/
│   ├── README.md
│   ├── 01-amazon-route53.md
│   ├── 02-hosted-zones.md
│   ├── 03-dns-terminology.md
│   ├── 04-dns-record-types.md
│   ├── 05-routing-policies.md
│   └── 06-domains-and-registrars.md
│
├── cdn-cloudfront/
│   ├── README.md
│   ├── 01-cloudfront-overview.md
│   └── 02-cloudfront-origins.md
│
└── assignments/
    ├── README.md
    ├── 01-vpc-and-networking.md
    ├── 02-application-load-balancer.md
    ├── 03-s3-cloudfront-route53.md
    └── 04-serverless-api-lambda-api-gateway.md
```

---

## Fundamentals

The Fundamentals section focuses on understanding AWS through **core cloud fundamentals**.

Rather than memorising services, the emphasis is on understanding:

- How cloud computing works
- How AWS global infrastructure is designed
- How Regions and Availability Zones operate
- How AWS accounts should be secured
- How AWS services fit together within cloud environments

These notes build a strong foundation for future topics such as **networking**, **security**, **containers**, and **cloud architecture**.

➡️ [View Fundamentals](./fundamentals)

---

## IAM

The IAM section focuses on securing AWS environments through **identity and access management**.

Each topic includes:

- Users, groups, and permissions
- IAM policies and policy inheritance
- Roles and temporary credentials
- Access keys, CLI access, and SDK access
- Security best practices and least-privilege access

These concepts help ensure AWS resources remain secure while providing the correct level of access to users and services.

➡️ [View IAM](./iam)

---

## Compute

The Compute section focuses on understanding how workloads are deployed and managed using Amazon EC2.

Each topic includes:

- Launching and configuring EC2 instances
- Instance sizing and purchasing models
- User Data and automated provisioning
- Machine Images (AMIs)
- Compute architecture and deployment considerations

These notes help build a strong foundation for hosting applications and infrastructure in AWS.

➡️ [View Compute](./compute)

---

## Networking

The Networking section focuses on understanding how AWS resources communicate securely across cloud environments.

Each topic includes:

- Security Groups and traffic filtering
- Public and private networking concepts
- VPCs, subnets, and routing
- Internet and NAT Gateways
- VPC Peering, Endpoints, and IPv6

These concepts form the backbone of cloud infrastructure and are essential for building secure and scalable environments.

➡️ [View Networking](./networking)

---

## Storage

The Storage section focuses on how data is stored, accessed, and shared within AWS environments.

Each topic includes:

- Block storage with Amazon EBS
- Shared storage with Amazon EFS
- Amazon Machine Images (AMIs)
- Storage performance considerations
- Persistence and availability concepts

These notes provide the foundation for deploying reliable applications and infrastructure.

➡️ [View Storage](./storage)

---

## Load Balancing & Scalability

The Load Balancing section focuses on building highly available and scalable cloud architectures.

Each topic includes:

- Vertical and horizontal scaling
- Load balancing concepts
- Application and Network Load Balancers
- Health checks and fault tolerance
- Auto Scaling Groups and dynamic capacity management

These concepts help applications remain available, resilient, and responsive under changing workloads.

➡️ [View Load Balancing](./load-balancing)

---

## Containers

The Containers section focuses on deploying and managing containerised workloads on AWS.

Each topic includes:

- Container fundamentals and architecture
- Amazon ECS and ECR workflows
- Container networking and service discovery
- Load balancer integration
- Kubernetes fundamentals with Amazon EKS

These concepts help bridge traditional cloud infrastructure with modern container platforms.

➡️ [View Containers](./containers)

---

## Serverless

The Serverless section focuses on building applications without managing traditional servers.

Each topic includes:

- AWS Lambda fundamentals
- Event-driven architectures
- Serverless execution models
- Common use cases and benefits
- Monitoring and debugging serverless workloads

These concepts demonstrate how applications can automatically scale while reducing operational overhead.

➡️ [View Serverless](./serverless)

---

## DNS & Route 53

The DNS section focuses on understanding how traffic is routed to applications hosted in AWS.

Each topic includes:

- DNS fundamentals and terminology
- Hosted Zones and DNS records
- Route 53 routing policies
- Health checks and failover routing
- Domain registration and management

These concepts are essential for making applications reachable from anywhere on the internet.

➡️ [View DNS & Route 53](./dns-route53)

---

## CDN & CloudFront

The CloudFront section focuses on accelerating content delivery through AWS edge locations.

Each topic includes:

- Content Delivery Network (CDN) fundamentals
- CloudFront origins and cache behaviour
- HTTPS content delivery
- Global performance optimisation
- Edge caching strategies

These concepts help improve performance, availability, and user experience worldwide.

➡️ [View CDN & CloudFront](./cdn-cloudfront)

---

## Assignments

The Assignments section focuses on applying AWS concepts through hands-on cloud engineering projects.

Assignments include:

- Building custom VPC architectures
- Deploying Amazon EC2 instances and networking infrastructure
- Configuring Application Load Balancers (ALBs)
- Hosting static websites with Amazon S3 and CloudFront
- Building serverless REST APIs using Amazon API Gateway, AWS Lambda, and Amazon DynamoDB
- Applying IAM, monitoring, security, and AWS best practices

These projects simulate how AWS infrastructure is designed, deployed, secured, and managed in production-style cloud environments.

➡️ [View Assignments](./assignments)
