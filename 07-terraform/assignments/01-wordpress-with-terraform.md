# Terraform WordPress Deployment on AWS EC2
![Terraform](https://img.shields.io/badge/Terraform-5C4EE5?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?logo=amazon-aws&logoColor=white)
![EC2](https://img.shields.io/badge/EC2-FF9900?logo=amazon-aws&logoColor=white)
![Apache](https://img.shields.io/badge/Apache-CA1F00?logo=apache&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-21759B?logo=wordpress&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnu-bash&logoColor=white)
<p align="center">
  <img src="https://github.com/user-attachments/assets/28973156-f7e4-48ae-8a5d-5f5cc5b5c0c7" width="400" alt="AWS/Terraform Architecture Diagram">
</p>

This project uses Terraform to provision a full WordPress setup on AWS. It deploys an EC2 instance in a public subnet, installs Apache, PHP and WordPress through userdata, and exposes the site over HTTP using the instance’s public IP.

It’s a simple example of infrastructure as code in action, showing how Terraform can automate an end to end deployment with zero manual steps.

## Terraform Provisioned Resources

- EC2 instance running Apache, PHP and WordPress
- Default VPC with a public subnet selected for the instance
- Security group allowing inbound HTTP traffic on port 80
- Userdata script that installs and configures everything on boot
- Public IP assigned via Terraform

## How It Works

1. Terraform provisions an EC2 instance in the default VPC.
2. Userdata installs Apache, PHP and pulls down the WordPress files.
3. The instance gets a public IP so the site is reachable over the internet.
4. The security group allows inbound HTTP traffic from anywhere.
5. Once the instance boots, WordPress is ready through the public endpoint.

<p align="center">
  <img src="https://github.com/user-attachments/assets/aacd0fbb-e697-46c8-9d30-676755eafc5d" width="600" alt="WordPress site screenshot"> 
</p>

## Possible Next Steps/Considerations

- Expand the setup with HTTPS using ACM or self-signed certificates  
- Add a database in RDS or another EC2 instance to separate the WordPress backend  
- Experiment with multiple instances and load balancing for high availability  
