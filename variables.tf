variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "my_ip" {
  description = "Your public IP in CIDR form, e.g. 203.0.113.10/32"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.micro"
}
