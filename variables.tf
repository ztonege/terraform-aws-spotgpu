# ----------------------------------------#
#
#       | Terraform Variables file |
#
# ----------------------------------------#
# File: variables.tf
# Author: Vithursan Thangarasa (vithursant)
# ----------------------------------------#

# No need to add since using env variables directly.
# variable "aws_access_key" {
#   type        = string
#   description = "The AWS access key used for tagging instances"
# }

# variable "aws_secret_key" {
#   type        = string
#   description = "The AWS secret key used for tagging instances"
# }

variable "my_region" {
  type        = string
  default     = "us-east-2"
  description = "The AWS region to deploy into (i.e. us-east-1)"
}

variable "avail_zone" {
  type        = string
  default     = "us-east-2a"
  description = "The AWS availability zone location within the selected region (i.e. us-east-2a)."
}

variable "my_ip" {
  type    = string
  default = "161.69.22.122/32"
}

variable "my_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "my_key_pair_name" {
  type        = string
  default     = "admin"
  description = "The name of the SSH key to install onto the instances."
}


variable "instance_type" {
  type        = string
  default     = "c5a.xlarge"
  description = "The instance type to provision the instances from (i.e. p2.xlarge)."

}

variable "spot_price" {
  type        = string
  default     = "0.04"
  description = "The maximum hourly price (bid) you are willing to pay for the specified instance, i.e. 0.10. This price should not be below AWS' minimum spot price for the instance based on the region."
}

variable "ebs_volume_size" {
  type        = string
  default     = "1"
  description = "The Amazon EBS volume size (1 GB - 16 TB)."
}

variable "ami_id" {
  type        = string
  default     = "ami-0476bba883df7cca6" # Default AWS Deep Learning AMI (Ubuntu)
  description = "The AMI ID to use for each instance. The AMI ID will be different depending on the region, even though the name is the same."
}

variable "num_instances" {
  type        = string
  default     = "1"
  description = "The number of AWS EC2 instances to provision."
}

variable "name" {
  type        = string
  description = "The tagged Name for the created AWS EC2 instance."
}
