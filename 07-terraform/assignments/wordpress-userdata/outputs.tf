output "public_ip" {
    description     = "Public IP address of the WordPress instance"
        value       = aws_instance.wordpress.public_ip
        }

output "public_dns" {
    description     = "Public DNS of the WordPress instance"
        value       = aws_instance.wordpress.public_dns
        }
