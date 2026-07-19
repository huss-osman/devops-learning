# CloudFront Overview

## Overview

This section introduces **Amazon CloudFront**, AWS's Content Delivery Network (CDN) service that delivers content with low latency by caching it at edge locations worldwide. Instead of requests reaching origin servers, CloudFront serves cached content from the closest location to users.

CloudFront also improves security by integrating with AWS services such as AWS Shield and AWS WAF, while reducing the load on origin servers and providing a faster experience for users worldwide.

## Contents

* [What is CloudFront?](#what-is-cloudfront)
* [Edge Locations](#edge-locations)
* [Benefits of CloudFront](#benefits-of-cloudfront)
* [How CloudFront Works](#how-cloudfront-works)

---

## What is CloudFront?

Amazon CloudFront is AWS's **Content Delivery Network (CDN)** that distributes content to users through a global network of edge locations.

Instead of every request being sent directly to the origin server, CloudFront caches frequently accessed content closer to users, reducing latency and improving performance.

---

## Edge Locations

CloudFront stores cached content at **Edge Locations**, also known as **Points of Presence (POPs)**, which are distributed across the globe.

When users request content, CloudFront serves it from the nearest available edge location whenever possible, providing faster response times.

---

## Benefits of CloudFront

CloudFront provides several advantages including:

- Faster content delivery
- Reduced latency
- Lower load on origin servers
- Automatic content caching
- Global availability
- Integration with AWS Shield and AWS WAF

These features improve both application performance and security.

---

## How CloudFront Works

When a user requests content, CloudFront first checks whether it already exists in the nearest edge location.

If the content is cached, it is returned immediately. If not, CloudFront retrieves it from the origin, stores a copy in the cache, and serves it to the user for faster future requests.

---

## Key Takeaways

- CloudFront is AWS's Content Delivery Network (CDN)
- Content is cached at Edge Locations
- Edge Locations reduce latency
- CloudFront improves performance and scalability
- Cached content reduces origin server load
- Integrates with AWS Shield and AWS WAF

---

## Reflection

Learning about Amazon CloudFront helped me understand how CDNs improve application performance by caching content closer to users. I also learned how CloudFront reduces latency, lowers the load on origin servers, and provides additional security through AWS integrations.

Understanding how CloudFront delivers content globally provides a strong foundation for designing fast, scalable, and highly available web applications on AWS that deliver a better user experience.
