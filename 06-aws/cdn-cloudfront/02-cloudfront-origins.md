# CloudFront Origins

## Overview

This section introduces **CloudFront Origins**, which are the sources from which CloudFront retrieves content before distributing it through edge locations. Origins can include Amazon S3 buckets, Application Load Balancers, Amazon EC2 instances, or other HTTP servers.

Understanding how origins work helps build secure, scalable, and efficient architectures while ensuring content is delivered quickly to users around the world.

## Contents

* [What is an Origin?](#what-is-an-origin)
* [Amazon S3 as an Origin](#amazon-s3-as-an-origin)
* [ALB and EC2 as Origins](#alb-and-ec2-as-origins)
* [Origin Access Control (OAC)](#origin-access-control-oac)

---

## What is an Origin?

An **Origin** is the location where CloudFront retrieves content when it is not already cached at an edge location.

Once the content is retrieved, CloudFront stores it in its cache so future requests can be served more quickly.

---

## Amazon S3 as an Origin

Amazon S3 is commonly used as a CloudFront origin for hosting static content such as images, videos, and website assets.

CloudFront retrieves objects from the S3 bucket when needed and caches them at edge locations, improving performance for future requests.

---

## ALB and EC2 as Origins

CloudFront can also use **Application Load Balancers (ALBs)** and **Amazon EC2 instances** as origins for dynamic web applications.

When using public ALBs or EC2 instances, security groups should allow traffic only from CloudFront's public IP ranges to improve security.

---

## Origin Access Control (OAC)

**Origin Access Control (OAC)** allows CloudFront to securely access private S3 buckets without exposing them directly to the internet.

This ensures users can only access S3 content through CloudFront, adding an extra layer of protection for stored objects.

---

## Key Takeaways

- Origins are the source of CloudFront content
- CloudFront supports S3, ALBs, EC2, and custom HTTP origins
- Cached content reduces repeated origin requests
- OAC secures private S3 buckets
- Security groups should allow CloudFront traffic when using ALBs or EC2
- CloudFront improves both performance and security

---

## Reflection

Learning about CloudFront origins helped me understand how content is retrieved and distributed through AWS's global edge network. I also learned the differences between using Amazon S3, Application Load Balancers, and Amazon EC2 as origins depending on the application.

Understanding how origins and Origin Access Control work provides a strong foundation for building secure, scalable, and high-performance content delivery solutions with Amazon CloudFront.
