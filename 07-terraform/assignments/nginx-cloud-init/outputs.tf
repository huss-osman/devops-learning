output "instance_public_ip" {
    description = "The public IP address of the cloud-init instance"
    value = aws_instance.cloud-init.public_ip
}

output "public_dns" {
    description = "The public DNS of the cloud-init instance"
    value = aws_instance.cloud-init.public_dns
}
