# SSL And TLS

## Overview

This section introduces **SSL and TLS certificates**, which are used to secure communication between clients and servers across the internet.

SSL/TLS provides **encryption in transit**, ensuring that sensitive information such as passwords, payment details, and personal information cannot be intercepted while travelling across networks.

Although the term SSL is still commonly used today, modern secure communication relies on **TLS (Transport Layer Security)**, the successor to SSL.

## Contents

* [What is SSL?](#what-is-ssl)
* [SSL vs TLS](#ssl-vs-tls)
* [Certificate Authorities](#certificate-authorities)
* [Certificate Expiration and Renewal](#certificate-expiration-and-renewal)

---

## What is SSL?

SSL stands for **Secure Sockets Layer**.

SSL certificates encrypt traffic between clients and servers, ensuring data remains secure while travelling across the internet.

This process is commonly referred to as:

* Encryption in transit
* In-flight encryption

Without encryption, attackers could potentially intercept sensitive information travelling between users and applications.

Examples include:

* Login credentials
* Payment information
* Personal data
* Session cookies

---

## SSL vs TLS

Although the term **SSL certificate** is still widely used, modern implementations actually use **TLS (Transport Layer Security)**.

TLS is the successor to SSL and provides:

* Stronger encryption
* Improved security
* Better performance

Today, when people refer to SSL certificates, they are almost always referring to TLS certificates.

> [!NOTE]
> SSL has largely been deprecated in favour of TLS, but the term "SSL certificate" remains common throughout the industry.

---

## Certificate Authorities

SSL/TLS certificates are issued by trusted organisations known as **Certificate Authorities (CAs)**.

Certificate Authorities verify the identity of websites and issue certificates that browsers trust.

Common Certificate Authorities include:

* Let's Encrypt
* DigiCert
* GlobalSign
* GoDaddy
* Sectigo (formerly Comodo)
* Symantec

When a browser connects to a website, it verifies that the certificate was issued by a trusted CA before establishing a secure connection.

---

## Certificate Expiration and Renewal

SSL/TLS certificates have an expiration date and must be renewed periodically.

Common certificate durations include:

* 90 Days
* 1 Year
* 2 Years

If a certificate expires:

* Browsers display security warnings
* Users may lose trust in the website
* Applications may become inaccessible

Modern environments often automate certificate renewal using tools such as:

* Certbot
* Cert Manager
* AWS Certificate Manager (ACM)

Automating certificate renewal helps avoid outages caused by expired certificates.

---

## Key Takeaways

* SSL/TLS encrypts traffic between clients and servers
* Encryption protects data while it is in transit
* TLS is the modern successor to SSL
* SSL certificates are issued by trusted Certificate Authorities
* Browsers validate certificates before establishing secure connections
* Certificates expire and require renewal
* Automated certificate management reduces operational risk
* SSL/TLS is a fundamental component of web security

---

## Reflection

Learning about SSL and TLS helped me understand how modern applications secure communication between users and services across the internet.

I also learned the difference between SSL and TLS, how certificates are issued and trusted, and why certificate renewal is critical for maintaining secure and reliable applications.
