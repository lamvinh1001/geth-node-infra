variable "ami_id" {
  description = "Ubuntu 22.04 AMI in Singapore"
  default     = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  default = "t3.small"
}

variable "my_ip" {
  description = "Your IP address for SSH access" #curl https://api.ipify.org
  default     = "171.252.106.73/32"
}
