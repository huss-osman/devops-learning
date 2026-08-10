resource "aws_instance" "cloud-init" {
  ami                    = var.ami_id
  instance_type          = var.instance_type

  vpc_security_group_ids = [aws_security_group.cloud-init_sg.id]

  subnet_id              = var.subnet_id
  user_data              = file("${path.module}/cloud-init.yaml")

  associate_public_ip_address = true

  tags = {
    Name                 = "cloud-init-instance"
  }
}

# sg rules for instance
resource "aws_security_group" "cloud-init_sg" {
  name                   = "cloudinit_sg"
  description            = "Allow HTTP traffic"

# inbound http
ingress {
      from_port          = 80
      to_port            = 80
      protocol           = "tcp"
      cidr_blocks        = ["0.0.0.0/0"]
  }
  
# outbound all
egress {
    from_port            = 0
    to_port              = 0
    protocol             = "-1"
    cidr_blocks          = ["0.0.0.0/0"]
    }
}
