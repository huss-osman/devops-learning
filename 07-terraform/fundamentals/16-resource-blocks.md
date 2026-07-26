# Terraform Resource Blocks

## Overview

This section introduces **Terraform resource blocks**, the core building blocks used to define and manage infrastructure. Every cloud resource created with Terraform, such as an EC2 instance, VPC, S3 bucket, or database, is declared using a resource block.

It helps build an understanding of how Terraform provisions infrastructure, making resource blocks essential for **Infrastructure as Code**, **cloud automation**, **resource management**, and modern DevOps workflows.

---

## Terraform Resource Blocks

**Resource Block**  
A configuration block that defines an infrastructure resource Terraform should create, update, or destroy.

### Role in Terraform

- Defines cloud infrastructure resources
- Specifies resource configuration
- Creates, updates, and destroys infrastructure
- Represents managed infrastructure
- Forms the foundation of Terraform configurations

Every infrastructure resource managed by Terraform is declared inside a resource block. Each block represents a specific resource type provided by the configured provider and contains the settings required to provision that resource.

---

## Resource Block Structure

The example below shows a simple Terraform resource block used to create an **Amazon EC2 instance**.

<p align="center">
  <img width="450" alt="Terraform Resource Block" src="https://github.com/user-attachments/assets/e132feac-7cd7-445c-8ed2-068d05d80e69" /> 
</p>

### Resource Declaration

```terraform
resource "aws_instance" "Test"
```

The resource declaration defines both the **resource type** and the **resource name**.

**`resource`**  
Identifies the block as a Terraform resource.

**`aws_instance`**  
Specifies the AWS resource type being created. In this example, it represents an Amazon EC2 instance.

**`Test`**  
The local name Terraform uses to reference this resource within the configuration.

---

### AMI

```terraform
ami = "ami-01572eda7c4411960"
```

The **AMI (Amazon Machine Image)** specifies the operating system and template used when launching the EC2 instance.

---

### Instance Type

```terraform
instance_type = "t2.micro"
```

The **instance type** determines the hardware configuration of the EC2 instance, including CPU and memory resources.

---

### Tags

```terraform
tags = {
  Name = "HelloWorld"
}
```

Tags are used to organise and identify cloud resources. Although optional, they are considered a best practice, particularly in production environments where resources are commonly labelled with values such as **Development**, **Staging**, or **Production**.

> [!IMPORTANT]
> Every Terraform resource block must include a **resource type** and a **resource name**. The remaining attributes depend on the type of resource being managed and define how that resource should be configured.

---

## Key Takeaways

- Resource blocks define infrastructure managed by Terraform
- Each resource block represents a specific resource type
- Resource declarations include a resource type and local resource name
- Attributes configure how the resource should be provisioned
- Tags help organise and identify infrastructure resources

---

## Reflection

Learning about Terraform resource blocks helped me understand how Infrastructure as Code is translated into real cloud infrastructure. Rather than manually provisioning resources, Terraform uses resource blocks to describe exactly what should exist and how it should be configured.

I also learned that every resource block follows a consistent structure, making Terraform configurations easier to read, manage, and scale as cloud environments become more complex.
