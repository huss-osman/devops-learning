# IAM: Password Policies & MFA

## Overview

This section introduces **Password Policies** and **Multi-Factor Authentication (MFA)**, two important security controls used within AWS Identity and Access Management (IAM). It focuses on how strong password requirements and MFA help protect AWS accounts from unauthorised access.

Understanding these security features is essential because AWS accounts often contain sensitive resources and infrastructure. Implementing strong authentication controls helps reduce security risks and supports AWS security best practices.

## Contents

* [Password Policies](#password-policies)
* [Password Security Best Practices](#password-security-best-practices)
* [What Is MFA?](#what-is-mfa)
* [Benefits of MFA](#benefits-of-mfa)
* [MFA Device Options](#mfa-device-options)
* [Virtual MFA Devices](#virtual-mfa-devices)
* [U2F Security Keys](#u2f-security-keys)
* [Hardware MFA Devices](#hardware-mfa-devices)
* [AWS GovCloud MFA Devices](#aws-govcloud-mfa-devices)

---

## Password Policies

AWS allows administrators to define password requirements for IAM users.

Common password policy settings include:

* Minimum password length
* Uppercase letters
* Lowercase letters
* Numbers
* Special characters
* Password expiration
* Password reuse prevention

These controls help enforce stronger passwords across AWS environments.

---

## Password Security Best Practices

Strong passwords reduce the likelihood of compromised accounts.

AWS also supports:

* Password expiration policies
* Self-service password changes
* Password history enforcement

In production environments, organisations often rely on:

* Single Sign-On (SSO)
* Identity Providers (IdPs)
* Federated Authentication

These approaches reduce reliance on traditional passwords while improving security and user management.

> [!NOTE]
> Modern production environments commonly use SSO in combination with MFA rather than relying solely on passwords.

---

## What Is MFA?

Multi-Factor Authentication (MFA) adds an additional layer of security beyond a username and password.

MFA requires:

* Something you know (**Password**)
* Something you have (**MFA Device**)

Even if an attacker obtains a password, they cannot access the account without the second authentication factor.

---

## Benefits of MFA

MFA helps protect:

* Root Accounts
* IAM Users
* AWS Resources
* Sensitive Data

Without MFA, a compromised password could allow attackers to:

* Access AWS resources
* Modify configurations
* Delete infrastructure
* Launch expensive resources

> [!IMPORTANT]
> MFA should always be enabled for AWS Root Accounts and privileged IAM users.

---

## MFA Device Options

AWS provides multiple MFA options to accommodate different security requirements and operational environments.

Common MFA options include:

* Virtual MFA Applications
* U2F Security Keys
* Hardware MFA Devices
* AWS GovCloud MFA Devices

Each option provides an additional layer of security beyond passwords.

---

## Virtual MFA Devices

Virtual MFA devices are application-based authenticators.

Examples include:

* Google Authenticator
* Microsoft Authenticator
* Authy
* Duo Mobile

These applications generate time-based one-time passwords (TOTP) used during authentication.

Benefits include:

* Free to use
* Easy to configure
* Support multiple accounts
* Widely adopted

---

## U2F Security Keys

Universal Second Factor (U2F) devices are physical security keys.

A common example is:

* YubiKey

Benefits include:

* Strong phishing resistance
* Fast authentication
* Support multiple accounts
* No code entry required

Authentication is typically completed by inserting the key and confirming access.

---

## Hardware MFA Devices

Hardware MFA devices generate authentication codes directly from a dedicated physical device.

Characteristics include:

* Generates rotating verification codes
* Does not require a smartphone
* Suitable for restricted environments

These devices are often used where mobile devices are not permitted.

---

## AWS GovCloud MFA Devices

AWS also supports specialised MFA devices for AWS GovCloud environments.

These devices are designed for:

* Government workloads
* High-security environments
* Compliance-focused deployments

They function similarly to standard hardware MFA devices while supporting specialised government cloud requirements.

> [!IMPORTANT]
> Any MFA method is significantly more secure than relying on passwords alone.

---

## Key Takeaways

* Password policies enforce stronger account security
* AWS can prevent password reuse
* Production environments commonly use SSO
* MFA provides a second layer of authentication
* MFA protects accounts even if passwords are compromised
* Root accounts should always have MFA enabled
* AWS supports multiple MFA device types
* Virtual MFA apps are the most common option
* U2F security keys provide strong phishing protection
* Hardware tokens are useful in restricted environments
* MFA options support different operational requirements
* All MFA methods improve account security

---

## Reflection

Learning about password policies and MFA highlighted the importance of authentication security within AWS. While strong passwords provide the first layer of protection, MFA significantly reduces the risk of account compromise by requiring a second authentication factor.

I also learned that many production environments rely on SSO and centralised identity management solutions, reducing dependence on traditional passwords while improving overall security. Understanding the different MFA options available in AWS reinforced the importance of implementing strong authentication controls to protect cloud environments and sensitive resources.
