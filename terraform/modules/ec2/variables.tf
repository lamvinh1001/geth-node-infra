variable "name" {
  type        = string
  description = "Name tag for the EC2 instance"
}

variable "ami_id" {
  type        = string
  description = "AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type (e.g., t3.small)"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to launch the instance into"
}

variable "key_name" {
  type        = string
  description = "Name of the SSH key pair to use"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to associate with the instance"
}
