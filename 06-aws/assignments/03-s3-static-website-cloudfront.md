# AWS S3 Static Website + CloudFront CDN

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-S3-orange)
![CloudFront](https://img.shields.io/badge/AWS-CloudFront-orange)

<p align="center">
  <img width="850" alt="S3 CloudFront Architecture" src="https://github.com/user-attachments/assets/a2c49a8c-b02e-46e6-8672-827050682321" />
</p>

This project demonstrates how to deploy a **production-style static website** using Amazon S3 and Amazon CloudFront. The website is hosted in an S3 bucket and delivered globally through CloudFront's edge network over HTTPS using the default CloudFront domain.

The objective was to understand how static websites are delivered at scale using AWS services. The project covers static website hosting, bucket permissions, content delivery through a Content Delivery Network (CDN), HTTPS with CloudFront, and cache invalidation to ensure updated content is delivered efficiently across AWS edge locations.

---

## Objective

The goal of this project was to:

- Deploy a static website using Amazon S3
- Configure Static Website Hosting
- Configure bucket permissions
- Upload website content
- Deploy an Amazon CloudFront distribution
- Configure HTTPS using CloudFront
- Verify CloudFront caching
- Demonstrate cache invalidation

---

## What It Deploys

The project provisions a production-style static website using AWS storage and edge services.

Infrastructure deployed:

- Amazon S3 Bucket
- Static Website Hosting
- Bucket Policy
- CloudFront Distribution

---

## How It Works

1. Amazon S3 stores the website files.
2. Static Website Hosting serves the website from the S3 website endpoint.
3. A bucket policy allows public read access to the website files.
4. CloudFront uses the S3 website endpoint as its origin.
5. CloudFront caches website content at AWS edge locations.
6. Visitors access the website securely through the CloudFront distribution.

---

# Creating the S3 Bucket

An Amazon S3 bucket named **husosman-static-site** was created in the **eu-west-2 (London)** region.

<p align="center">
<img width="1000" alt="S3 Bucket" src="https://github.com/user-attachments/assets/6dd854b9-3ffd-42f7-8968-76b9882c3ef8" /> 
</p>

Amazon S3 provides highly durable object storage and is commonly used to host static websites because it can store and serve HTML, CSS, JavaScript, images, and other static assets without requiring a web server.

---

# Configuring Public Access

By default, Amazon S3 blocks all public access. Since this project hosts a public website directly from the S3 website endpoint, Block Public Access was disabled for the bucket.

<p align="center">
<img width="1000" alt="Block Public Access" src="https://github.com/user-attachments/assets/5fe03196-2573-41a6-a964-6b3d693feb4b" />
</p>

> [!IMPORTANT]
> This project intentionally allows public read access because the website is served directly from the S3 website endpoint. In production environments, a more secure approach is to keep the bucket private and allow only CloudFront to access it using Origin Access Control (OAC).

---

# Enabling Static Website Hosting

Static Website Hosting was enabled with:

- **Index document:** `index.html`
- **Error document:** `error.html`

<p align="center">
<img width="1000" alt="Static Website Hosting" src="https://github.com/user-attachments/assets/8029f21f-b128-4567-9115-09ba765b06d0" /> 
</p>

Enabling Static Website Hosting creates a dedicated website endpoint capable of serving web pages rather than returning individual objects from the bucket.

---

# Configuring the Bucket Policy

A bucket policy was added to allow public read access to every object stored inside the bucket.

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::husosman-static-site/*"
    }
  ]
}
```

<p align="center">
<img width="1000" alt="Bucket Policy" src="https://github.com/user-attachments/assets/e3953192-a6e8-43b9-a553-b9444fe333f3" /> 
</p>

The bucket policy grants anyone permission to retrieve objects stored in the bucket. The policy only allows read access (`s3:GetObject`), making the website files publicly accessible while preventing users from modifying bucket contents.

---

# Uploading the Website Files

The website files were uploaded to Amazon S3.

The deployment includes:

- `index.html`
- `error.html`

<p align="center">
<img width="1000" alt="Website Files" src="https://github.com/user-attachments/assets/cadffe58-2ff6-444f-83a3-f10fd94f050a" /> 
</p>

These files make up the static website hosted by Amazon S3. Since there is no application server, every request simply returns the stored files directly from the bucket.

---

# Testing the S3 Website Endpoint

The website was tested using the Amazon S3 Static Website endpoint.

<p align="center">
<img width="1000" alt="S3 Website Endpoint" src="https://github.com/user-attachments/assets/83b8c8cd-cd74-40f0-a7c1-dd694a92f4dc" />
</p>

At this stage the website is successfully hosted by Amazon S3 and accessible over **HTTP** using the generated website endpoint.

This confirms:

- Static Website Hosting is enabled
- The bucket policy is working correctly
- Website files are publicly accessible

---

# Creating the CloudFront Distribution

An Amazon CloudFront distribution was created using the S3 website endpoint as its origin.

The distribution was configured with:

- S3 Website Endpoint origin
- Default Root Object (`index.html`)
- Object Compression
- Managed **CachingOptimized** cache policy
- HTTP to HTTPS redirection

<p align="center">
<img width="1000" alt="CloudFront Distribution" src="https://github.com/user-attachments/assets/09f47dc0-fdca-40c1-89fe-17cfb12dd4bf" /> 
</p>

<p align="center">
<img width="1000" alt="CloudFront Distribution" src="https://github.com/user-attachments/assets/265c9712-89e3-46d2-9f60-bef0cf211a7d" /> 
</p>

CloudFront caches website content across AWS edge locations around the world, reducing latency while improving website performance, scalability, and availability.

> [!IMPORTANT]
> CloudFront serves cached copies of your website from edge locations. This reduces requests to the origin and significantly improves response times for users across the globe.

---

# Configuring CloudFront Behaviour

The default CloudFront behaviour was configured to optimise performance and improve security.

Configuration included:

- Redirect HTTP to HTTPS
- Allow **GET** and **HEAD** requests
- Enable object compression
- Managed **CachingOptimized** policy
- Default Root Object (`index.html`)

<p align="center">
<img width="1000" alt="CloudFront Behaviour" src="https://github.com/user-attachments/assets/8aa1477b-db2b-40c9-8faf-b056320c1ced" />  
</p>

These settings ensure visitors are automatically redirected to HTTPS while allowing CloudFront to efficiently cache website content across AWS edge locations.

---

# Testing the CloudFront Distribution

Once deployed, the website was successfully accessed using the CloudFront distribution domain.

<p align="center">
<img width="1000" alt="CloudFront Website" src="https://github.com/user-attachments/assets/dfcbcbd5-f1c6-41cb-a6a3-af6f953de251" /> 
</p>

Unlike the S3 website endpoint, CloudFront provides HTTPS support, global caching, and improved performance by serving cached content from AWS edge locations.

---

# Verifying CloudFront Caching

CloudFront caching was verified using:

```bash
curl -I https://d1ayc0d3603lp2.cloudfront.net
```

<p align="center">
<img width="1000" alt="CloudFront Cache" src="https://github.com/user-attachments/assets/74520114-87d2-4634-be94-b090d627e6a2" /> 
</p>

The response headers included:

- `x-cache`
- `via`

These headers confirm that the response is being served from CloudFront rather than directly from Amazon S3.

> [!IMPORTANT]
> CloudFront stores cached copies of objects at AWS edge locations. Requests are served from the cache until the object expires or an invalidation is performed.

---

# Demonstrating Cache Invalidation

The contents of `index.html` were modified and uploaded to Amazon S3.

Immediately after uploading, CloudFront continued serving the previous version because the object was still cached.

<p align="center">
<img width="1000" alt="CloudFront Website" src="https://github.com/user-attachments/assets/dfcbcbd5-f1c6-41cb-a6a3-af6f953de251" /> 
</p>

A CloudFront invalidation was then created for:

```text
/*
```

<p align="center">
<img width="1000" alt="CloudFront Invalidation" src="https://github.com/user-attachments/assets/a128e6f3-5417-4b2b-b54f-3b3ef15be384" /> 
</p>

Once the invalidation completed, CloudFront retrieved the updated files from the S3 origin.

<p align="center">
<img width="1000" alt="Updated Website" src="https://github.com/user-attachments/assets/349c648d-7307-418f-84a2-e89f5e547708" /> 
</p>

This demonstrates one of the core concepts of a CDN: changes made at the origin are not immediately visible until cached content expires or an invalidation forces CloudFront to fetch the latest version.

---

# Cleaning Up the Infrastructure

Amazon S3 buckets and CloudFront distributions can continue to incur charges if left running, so it's important to remove them once testing has been completed.

To clean up the deployment:

- Delete the CloudFront distribution.
- Wait for the distribution to finish disabling.
- Delete the Amazon S3 bucket after emptying its contents.

Deleting these resources ensures there are no ongoing charges from this project.

---

## Getting Started

#### Prerequisites

- An AWS account
- Permissions to create Amazon S3 and CloudFront resources

#### 1. Clone the Repository

```bash
git clone https://github.com/huss-osman/devops-learning.git
cd devops-learning/06-aws/assignments/03-s3-static-website-cloudfront
```

#### 2. Follow the Walkthrough

Complete each deployment step in order using the screenshots and explanations provided throughout this repository.

#### 3. Deploy the Infrastructure

Create the S3 bucket, configure Static Website Hosting, and deploy the CloudFront distribution.

#### 4. Test the Deployment

Verify:

- S3 Website Endpoint
- CloudFront Distribution
- CloudFront caching
- Cache invalidation

#### 5. Clean Up

Delete the deployed AWS resources to avoid unnecessary charges.

---

# Troubleshooting

Some issues encountered during deployment included:

- Static Website Hosting not enabled
- Block Public Access preventing website access
- Incorrect bucket policy configuration
- CloudFront distribution still deploying
- Cached CloudFront content not updating immediately
- Missing CloudFront invalidation

---

## Why I Built It

I wanted a hands-on understanding of:

- Hosting static websites using Amazon S3
- Configuring bucket permissions
- Understanding CloudFront as a Content Delivery Network (CDN)
- Improving website performance through edge caching
- Understanding cache invalidation
- Building production-style static website architectures on AWS

---

# Key Takeaways

- Hosted a static website using Amazon S3
- Configured Static Website Hosting
- Applied a public-read bucket policy
- Delivered content globally using CloudFront
- Verified CloudFront edge caching
- Performed cache invalidation after updating website content
- Gained hands-on experience building production-style static website infrastructure on AWS
