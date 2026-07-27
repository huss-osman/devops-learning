# Creating an EC2 Instance

## Overview

This section demonstrates how to deploy an Amazon EC2 instance using Terraform by combining the official Terraform Registry with the AWS Management Console.

It covers locating the required resource documentation, configuring the `aws_instance` resource, authenticating Terraform with AWS, planning the deployment, and provisioning an EC2 instance through Infrastructure as Code.

<p align="center">
  <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference">
    Official AWS Instance Documentation
  </a>
</p>

---

## Steps

### Step 1 — Open the Terraform Registry

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/c93728f6-fb43-4a1b-979b-027ffcd0e7fd"> 
</p>

---

### Step 2 — Select the AWS Provider

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/926028b8-2e74-4ba0-8991-a09b8cd0cf41">
</p>

---

### Step 3 — Open the Documentation

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/d027d1df-e6df-48fe-837d-5517cc91c0b6"> 
</p>

---

### Step 4 — Search for `aws_instance`

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/505d2707-5195-422d-9f9b-cc8f59d868db">
</p>

---

### Step 5 — Open the Argument Reference

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/50ae59b2-bc39-4be9-b432-c5df86be3cc6"> 
</p>

---

### Step 6 — Copy the Example Resource Block

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/fa0c7802-558b-4303-8c9f-d019ee16ea5d">
</p>

```terraform
resource "aws_instance" "this" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "m5.large"
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost"
  tenancy                 = "host"
}
```

---

### Step 7 — Create `ec2.tf` and Paste the Resource Block

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/66edf4df-bfcc-4926-ba77-df68699e3072"> 
</p>

Create a new Terraform configuration file named **`ec2.tf`**, then paste the example resource block copied from the Terraform Registry.

```terraform
resource "aws_instance" "this" {
  ami                     = "ami-0dcc1e21636832c5d"
  instance_type           = "m5.large"
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost"
  tenancy                 = "host"
}
```

---

### Step 8 — Open the Amazon EC2 Console

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/ff7865a8-5620-4871-8a28-b4370b230cc0"> 
</p>

From the AWS Management Console, open the **Amazon EC2** service to begin creating a new virtual machine.

---

### Step 9 — Navigate to Instances

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/07dd54a5-3e5b-4648-9eb4-ce626c656573"> 
</p>

Select **Instances** from the left navigation menu to view your existing EC2 instances.

---

### Step 10 — Launch a New Instance

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/cd954d0a-f5cb-47a0-aefd-16706fda33ee"> 
</p>

Click **Launch instances** to start the EC2 instance creation wizard.

---

### Step 11 — Select an Amazon Machine Image (AMI)

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/2937c2fb-096f-4aea-b5f3-04fff52f1bb9">
</p>

Choose an operating system image, then copy the **AMI ID**. This value will be used as the `ami` argument in the Terraform resource block.

---

### Step 12 — Update the Terraform Configuration

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/abd17d0c-6969-408f-9d9c-129c27e33486">

</p>

Paste the copied **AMI ID** into the `ami` argument and specify the instance type.

```terraform
resource "aws_instance" "this" {
  ami           = "ami-0224ce6f9504665ee"
  instance_type = "t2.micro"
}
```

---

### Step 13 — Open the IAM Console

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/a39e1b87-b859-4898-b19d-448d761f3683">
</p>

Open the **IAM** service from the AWS Management Console.

---

### Step 14 — Select Your IAM User

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/91447cde-8ca3-4d7f-a7e4-1bd7b3139d37">
</p>

Under **IAM resources**, select **Users** to view the IAM users in your AWS account.

---

### Step 15 — Open Your IAM User

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/022f5d40-d2ae-4b75-945d-56b377650109"> 

</p>

Choose the IAM user that Terraform will use to authenticate with AWS.

---

### Step 16 — Create an Access Key

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/523832f1-f541-4c1b-9411-93f1a65cc462"> 
</p>

Select **Create access key** to generate credentials for Terraform.

---

### Step 17 — Select Local Code

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/e9526257-5fd4-4d8d-8a6d-fbb6157bd5d4">
</p>

Choose **Local code**, confirm the recommendation, and continue.

---

### Step 18 — Skip the Description Tag

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/00af77af-6ddf-41c7-b714-c0ed3cd4e9d2"> 
</p>

The description tag is optional. Skip this step and create the access key.

---

### Step 19 — Copy the Access Keys

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/e4ce4396-33fc-490b-9d4e-1f47d2a9fb60">
</p>

Copy and securely store both the **Access key ID** and **Secret access key**. The secret access key is only displayed once.

> [!IMPORTANT]
> The **Secret access key** cannot be viewed again after leaving this page. Store it securely and never share it publicly.

---

### Step 20 — Export the AWS Credentials

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/b508bae4-9f8b-4e78-a9c5-be04da9f4263"> 
</p>

Export the AWS credentials and default region as environment variables.

```bash
export AWS_ACCESS_KEY_ID="your_access_key_id"

export AWS_SECRET_ACCESS_KEY="your_secret_access_key"

export AWS_DEFAULT_REGION="your_default_region"
```

---

### Step 21 — Run `terraform plan`

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/700caf0f-761d-48d6-b8f9-f9115229fe2c"> 
</p>

Run `terraform plan` to compare your Terraform configuration with the current AWS infrastructure.

---

### Step 22 — Verify the Current State

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/a4b27aad-6b41-4f69-be9d-ccae75e4d215"> 
</p>

Confirm that no EC2 instances are currently running before applying the configuration.

---

### Step 23 — Run `terraform apply`

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/a26ef212-5c8e-434b-824e-7c9f57855691"> 
</p>

Run `terraform apply`, review the execution plan, and enter **yes** to deploy the EC2 instance.

---

### Step 24 — Verify the Deployment

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/baac1c78-ed32-40fb-912d-d1f923356efb">
</p>

Return to the AWS Console and confirm that one EC2 instance is now running.

---

### Step 25 — View the EC2 Instance

<p align="center">
  <img width="900" src="https://github.com/user-attachments/assets/f7968ec6-d779-4037-a57a-d347fb4db242">
</p>

Open the EC2 instance to verify that Terraform successfully created the resource using the specified AMI and instance type.

---

## Key Takeaways

- The Terraform Registry provides official documentation and example resource blocks.
- The `aws_instance` resource requires a valid AMI ID and instance type.
- AWS access keys allow Terraform to authenticate with your AWS account.
- `terraform plan` previews infrastructure changes before deployment.
- `terraform apply` provisions infrastructure and updates the current state to match the Terraform configuration.
  
---

## Reflection

Building and deploying an EC2 instance reinforced how Terraform interacts with AWS to provision infrastructure from code. Following the complete workflow—from finding the correct resource documentation and configuring the `aws_instance` resource to authenticating with AWS and deploying with `terraform apply`—provided a practical understanding of Infrastructure as Code and the Terraform deployment lifecycle.
