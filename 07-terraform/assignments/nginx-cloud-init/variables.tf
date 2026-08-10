variable "ami_id" {
    description = "AMI ID for the instance"
    type        = string
    default     = "ami-03f3a22c5f8f5ef58"
}

variable "instance_type" {
    description = "Instance type for the instance"
    type        = string
    default     = "t3.micro"
}   

variable "vpc_id" {
    description = "VPC ID where the instance will be launched"
    type        = string
    default     = "vpc-03d7df35c8a306d55"
  
}
variable "subnet_id" {
    description = "Subnet ID where the instance will be launched"
    type        = string
    default     = "subnet-014da8a42a0604235"
}
