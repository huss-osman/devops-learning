# Terraform EC2 Deployment with Cloud-Init
![Terraform](https://img.shields.io/badge/Terraform-5C4EE5?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?logo=amazon-aws&logoColor=white)
![EC2](https://img.shields.io/badge/EC2-FF9900?logo=amazon-aws&logoColor=white)
![NGINX](https://img.shields.io/badge/NGINX-009639?logo=nginx&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnu-bash&logoColor=white)
![Cloud-Init](https://img.shields.io/badge/Cloud--Init-6DB33F?logo=cloud-init&logoColor=white)
<p align="center">
  <img src="https://github.com/user-attachments/assets/7d08d34d-3a13-4c19-a03d-96a31825bafd" width="500" alt="AWS/Terraform Architecture Diagram"> 
</p>

This project demonstrates a slightly different approach to deploying an EC2 instance on AWS.  

Instead of embedding all commands in the Terraform userdata script, it uses `cloud-init` to automate instance setup. NGINX is installed and configured on boot, making the instance ready to serve HTTP traffic immediately. It’s a simple example of automated instance provisioning.

## Why Cloud-Init?

Using cloud-init provides a cleaner and more maintainable way to configure instances compared to writing longer bash scripts:

- You mostly **describe what the instance should do** rather than writing every single command manually.  
- Built-in modules handle common tasks like **setting up SSH keys, installing packages, configuring services, or managing users**.  
- YAML configuration is **easier to read and interpret**, making the setup clearer for anyone reviewing the code.  
- Future updates or changes to instance setup are **simpler to apply** without touching Terraform logic.

## Terraform Provisioned Resources

- EC2 instance running NGINX
- Default VPC with a public subnet selected for the instance
- Security group allowing inbound HTTP traffic on port 80
- Cloud-init YAML script that installs and configures NGINX on boot

## How It Works

1. Terraform provisions an EC2 instance in the default VPC.  
2. Cloud-init runs at boot and installs NGINX, enabling and starting the service automatically.  
3. The instance receives a public IP so it’s reachable over the internet.  
4. Security group allows inbound HTTP traffic from anywhere.  
5. Once the instance finishes booting, NGINX is serving content immediately.

<p align="center">
  <img src="https://github.com/user-attachments/assets/41ff4b9b-d0ee-4904-9a44-894ccab40e53" width="600" alt="Nginx page screenshot">
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/aea17b1c-68f8-47c4-be45-f1c9e1e7dd5d" width="600" alt="Terminal output">
</p>
