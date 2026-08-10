variable "ami_id" {
    description = "AMI ID for the WordPress instance"
    type        = string
    default     = "ami-0a0ff88d0f3f85a14"
}

variable "instance_type" {
    description = "Instance type for the WordPress instance"
    type        = string
    default     = "t3.micro"
}   
