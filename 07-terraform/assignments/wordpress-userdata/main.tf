resource "aws_instance" "wordpress" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]

  user_data = file("${path.module}/userdata.sh")

  associate_public_ip_address = true

  tags = {
    Name = "WordPressInstance"
  }
}

# sg rules for wordpress instance
resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress_sg"
  description = "Allow HTTP traffic"

# inbound http
ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
# outbound all
egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
}
